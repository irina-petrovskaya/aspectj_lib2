package mylibs.aspectjlibs.lib2;

/**
 * Created by irina on 11/6/2014.
 */
public aspect AdviceAspect1 {

    public pointcut fooPointcut(Object o): target(o) && call(public java.lang.String foo*(..));
    after (Object o):fooPointcut(o){

        System.out.println("**************");
    }
}
