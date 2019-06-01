package moon.peg.grammar;

import moon.peg.grammar.Stream.RecursionInfo;

/**
 * ParseTree is the result of parsing a text stream.
 * @author Munir Hussin
 */
enum ParseTree
{
    // fails
    Pending;                                    // left recursion detection
    Recursion(info:RecursionInfo);
    //Error(msg:String);                          // failed
    Error;                                      // failed
    
    // successes
    Empty;                                      // no value
    Value(v:String);                            // terminal value
    
    Tree(val:ParseTree);                        // single value (for pass-thru)
    Multi(a:Array<ParseTree>);                  // multi-values (for seq, A* or A+)
    Node(id:String, val:ParseTree);             // with child nodes
}
