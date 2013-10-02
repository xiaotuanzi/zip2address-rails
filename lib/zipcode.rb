# -*- coding: utf-8 -*-

require "net/http"
require "rexml/document"

class ZipCode
  include REXML

  def initialize(code)
    @code = code
  end

  def address
    Net::HTTP.version_1_2
    xml = Net::HTTP.get('zip.cgis.biz', "/xml/zip.php?zn=#{@code}")
    doc = Document.new(xml)

    [ 
      XPath.first(doc, "/ZIP_result/ADDRESS_value/value/@state").value,
      XPath.first(doc, "/ZIP_result/ADDRESS_value/value/@city").value,
      XPath.first(doc, "/ZIP_result/ADDRESS_value/value/@address").value,
    ].join
  end
end
