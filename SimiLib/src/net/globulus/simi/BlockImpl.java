package net.globulus.simi;

import java.util.List;

class BlockImpl implements SimiBlock, SimiCallable {

  final Expr.Block declaration;
  final Environment closure;

  private Integer lastStatement;
  private Environment lastClosure;

  BlockImpl(Expr.Block declaration, Environment closure) {
    this.declaration = declaration;
    this.closure = closure;
  }

  BlockImpl bind(SimiObjectImpl instance) {
    Environment environment = new Environment(closure);
    environment.assign(Token.self(), new SimiValue.Object(instance), true);
    SimiClassImpl clazz = instance.clazz;
    if (clazz != null) {
      environment.assign(Token.superToken(), new SimiClassImpl.SuperClassesList(clazz.superclasses), true);
    }
    return new BlockImpl(declaration, environment);
  }

  boolean isNative() {
    return declaration.isNative;
  }

  @Override
  public void yield(int index) {
    this.lastStatement = index;
    this.lastClosure = this.closure;
  }

  private void clearYield() {
    this.lastStatement = null;
    this.lastClosure = null;
  }

  @Override
  public String toString() {
    return "<block>";
  }

  @Override
  public int arity() {
    return declaration.params.size();
  }

  @Override
  public SimiProperty call(BlockInterpreter interpreter,
                           SimiEnvironment environment,
                           List<SimiProperty> arguments,
                           boolean rethrow) {
    return call(interpreter, environment, arguments, rethrow, null);
  }

  SimiProperty call(BlockInterpreter interpreter,
                    SimiEnvironment environment,
                    List<SimiProperty> arguments,
                    boolean rethrow,
                    SimiCallable invoker) {
    Environment originalEnv;
    if (environment != null) {
      originalEnv = (Environment) environment;
      SimiProperty selfProp = closure.get(Token.self());
      if (selfProp != null) {
        originalEnv.assign(Token.self(), selfProp, true);
      }
      SimiProperty superProp = closure.get(Token.superToken());
      if (superProp != null) {
        originalEnv.assign(Token.superToken(), superProp, true);
      }
    } else {
      originalEnv = closure;
    }
    Environment env = new Environment(lastClosure != null ? lastClosure : originalEnv);
    if (arguments != null) {
      for (int i = 0; i < declaration.params.size(); i++) {
        env.define(getParamLexeme(declaration.params.get(i)), arguments.get(i));
      }
    }
    env.assign(Token.selfDef(), new SimiValue.Callable((invoker != null) ? invoker : this, null, null), false);

    try {
      interpreter.executeBlock(this, env, (lastStatement != null) ? lastStatement : 0);
    } catch (Return returnValue) {
      clearYield();
      if (rethrow) {
        throw returnValue;
      } else {
        return returnValue.prop;
      }
    } catch (Yield yield) {
      if (rethrow) {
        throw new Yield(yield.prop, true);
      } else {
        return yield.prop;
      }
    }
    clearYield();
    return env.get(Token.self());
  }

  @Override
  public List<? extends SimiStatement> getStatements() {
    return declaration.getStatements();
  }

  @Override
  public boolean canReturn() {
    return declaration.canReturn();
  }

  @Override
  public String toCode(int indentationLevel, boolean ignoreFirst) {
    return declaration.toCode(indentationLevel, ignoreFirst);
  }

  public static String getParamLexeme(Expr param) {
    String lexeme;
    if (param instanceof Expr.Variable) {
      lexeme = ((Expr.Variable) param).name.lexeme;
    } else {
      lexeme = ((Expr.Variable) ((Expr.Binary) param).left).name.lexeme;
    }
    return lexeme;
  }
}
