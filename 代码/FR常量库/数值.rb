#!/usr/bin/env ruby -w
# encoding: UTF-8
FR0 = -> p { -> x {       x    } }
FR1 = -> p { -> x {     p[x]   } }
FR2 = -> p { -> x {   p[p[x]]  } }
FR3 = -> p { -> x { p[p[p[x]]] } }
