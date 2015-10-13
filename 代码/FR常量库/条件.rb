#!/usr/bin/env ruby -w
# encoding: UTF-8
FR如果 = -> b {b}
#~ >> IF[TRUE][:foo][:bar]
#~ => :foo

#~ >> IF[FALSE][:foo][:bar]
#~ => :bar