package mylibs.aspectjlibs.lib2;

 //
public aspect AdviceAspect1 {
    /**
     * for all public methods with name == foo* and String type
     */
    public pointcut fooPointcut(Object o): target(o) && call(public java.lang.String foo*(..));
    after (Object o):fooPointcut(o){
        System.out.println("***** after String foo*(..) method call in "+o.getClass().getName()+"*****");
    }
}
