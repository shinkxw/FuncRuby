#!/usr/bin/env ruby -w
# encoding: UTF-8
module FR转换工具
  def self.字符串转换(字符串)
    常量读取 unless @常量哈希
    删除空格与换行(中文混淆(常量替换(字符串)))
  end
  def self.常量替换(字符串)
    字符串.替换(/FR[^\[\] ]+/) do |常量名|
      常量替换(@常量哈希.含有键?(常量名) ? @常量哈希[常量名] : 获取动态常量表达式(常量名))
    end
  end
  def self.中文混淆(字符串)
    中文变量哈希 = {}
    变量起始序号 = 0
    字符串.替换(/[\u4e00-\u9fa5]+/) do |中文|
      if 中文变量哈希.含有键?(中文)
        中文变量哈希[中文]
      else
        中文变量哈希[中文] = "fr#{变量起始序号 += 1}"
      end
    end
  end
  def self.删除空格与换行(字符串)
    字符串.替换(/ |\n/, '')
  end
  def self.获取动态常量表达式(常量名)
    if /^FR(?<类型>.)_(?<值>.+)$/ =~ 常量名
      case 类型
      when 'N' then FR.丘奇数表达式(值.整数化)
      when 'C' then FR.λ字符表达式(值)
      when 'S' then FR.λ字符串表达式(值)
      else 引发 NameError, "undefined constant #{常量名}"
      end
    else
      引发 NameError, "undefined constant #{常量名}"
    end
  end
  def self.常量读取
    @常量哈希 = {}
    S目录.遍历文件路径("#{R文件.目录名称(__FILE__)}/FR常量库") do |文件路径|
      读取常量文件(文件路径) if R文件.扩展名(文件路径) == '.rb'
    end
  end
  def self.读取常量文件(路径)
    打开(路径, "r:UTF-8") do |文件|
      文件.逐行读取.每个 do |每行|
        if /^(?<常量名>FR.+?) += (?<常量表达式>[^#\n]+)/ =~ 每行
          @常量哈希[常量名] = 常量表达式
        end
      end
    end
  end
end