#!/usr/bin/env ruby -w
# encoding: UTF-8
module FR
  def self.真?(布尔值);布尔值[true][false] end
  def self.假?(布尔值);布尔值[false][true] end
  def self.数值(丘奇数);丘奇数[-> x { x + 1 }][0] end
end