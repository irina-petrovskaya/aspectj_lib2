package mylibs.aspectjlibs.lib2;

//
public aspect FooAspect1 {
    /**
     * uncomment to recreate exception
     **/
     /*
    public String aaaa.bbbb.cccc.Foo.aspectStr1(){
        return " aspect str1 ";
    }*/

    public pointcut barPointcut(Object o): target(o) && call(public java.lang.String bar*(..));
    after (Object o): barPointcut(o){
        System.out.println("+++++ after String bar*(..) method call in "+o.getClass().getName()+"+++++");
    }
}
