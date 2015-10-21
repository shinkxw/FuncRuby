#!/usr/bin/env ruby -w
# encoding: UTF-8
FR真 = -> x { -> y { x } }#TRUE := λx y.x
FR假 = -> x { -> y { y } }#FALSE := λx y.y
#逻辑运算
FR与 = -> p { -> q { p[q[FR假]] } }#AND := λp q.p q FALSE
FR或 = -> p { -> q { p[FR真[q]] } }#OR := λp q.p TRUE q
FR非 = -> p { p[FR假][FR真] }#NOT := λp.p FALSE TRUE