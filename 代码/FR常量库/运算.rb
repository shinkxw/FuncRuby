#!/usr/bin/env ruby -w
# encoding: UTF-8
FR递增 = -> n { -> p { -> x { p[n[p][x]] } } }
FR递减 = -> n { -> f { -> x { n[-> g { -> h { h[g[f]] } }]
                                  [-> y { x }][-> y { y }] } } }
FR加   = -> m { -> n { n[FR递增][m] } }
FR减   = -> m { -> n { n[FR递减][m] } }
FR乘   = -> m { -> n { n[FR加[m]][ZERO] } }
FR乘方 = -> m { -> n { n[FR乘[m]][ONE] } }