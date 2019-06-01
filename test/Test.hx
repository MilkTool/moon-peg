package;

import moon.peg.ParserTest;
import moon.test.TestCase;
import moon.test.TestRunner;

/**
 * ...
 * @author Munir Hussin
 */
class Test
{
    
    public static function main()
    {
        var modules:Array<Class<TestCase>> =
        [
            ParserTest,
        ];
        
        var r = new TestRunner();
        for (m in modules)
            r.add(Type.createInstance(m, []));
        r.run();
    }
}
