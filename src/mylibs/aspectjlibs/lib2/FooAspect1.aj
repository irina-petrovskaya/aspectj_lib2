package mylibs.aspectjlibs.lib2;

/**
 * Created by irina on 11/5/2014.
 */
public aspect FooAspect1 {
/*
    public String aaaa.bbbb.cccc.Foo.aspectStr1(){
        return " aspect str1 ";
    }*/
    public pointcut barPointcut(Object o): target(o) && call(public java.lang.String bar*(..));
    after (Object o): barPointcut(o){

        System.out.println("++++++++++++++++++++++");
    }
}
