﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
FR为零 = -> 丘奇数 { 丘奇数[-> 原始值 { FR假 }][FR真] }
FR小于等于 = -> 数1 { -> 数2 { FR为零[FR减[数1][数2]] } }
FR大于等于 = -> 数1 { -> 数2 { FR为零[FR减[数2][数1]] } }