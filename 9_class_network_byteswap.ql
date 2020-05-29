import cpp

class NetworkByteSwap extends Expr {
  NetworkByteSwap () {
    // TODO: replace <class> and <var>
    exists(MacroInvocation mi | 
      // TODO: <condition>
      mi.getMacroName().regexpMatch("ntoh(s|1|11)") and
      this = mi.getExpr()
    )
  } 
}

from NetworkByteSwap n
select n, "Network byte swap" 
