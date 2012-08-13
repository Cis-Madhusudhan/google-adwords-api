# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.7.3 on 2012-07-04 07:27:38.

require 'adwords_api/errors'

module AdwordsApi; module V201206; module ReportDefinitionService
  class ReportDefinitionServiceRegistry
    REPORTDEFINITIONSERVICE_METHODS = {:get_report_fields=>{:input=>[{:name=>:report_type, :type=>"ReportDefinition.ReportType", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_report_fields_response", :fields=>[{:name=>:rval, :type=>"ReportDefinitionField", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    REPORTDEFINITIONSERVICE_TYPES = {:EnumValuePair=>{:fields=>[{:name=>:enum_value, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:enum_display_value, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :ReportDefinitionField=>{:fields=>[{:name=>:field_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:display_field_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:xml_attribute_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:field_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:enum_values, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:can_select, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:can_filter, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_enum_type, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_beta, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:enum_value_pairs, :type=>"EnumValuePair", :min_occurs=>0, :max_occurs=>:unbounded}]}, :SoapHeader=>{:fields=>[{:name=>:auth_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:client_customer_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:developer_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_agent, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:validate_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:partial_failure, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:service_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:method_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operations, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:units, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :"ReportDefinition.ReportType"=>{:fields=>[]}}
    REPORTDEFINITIONSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return REPORTDEFINITIONSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return REPORTDEFINITIONSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return REPORTDEFINITIONSERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < AdwordsApi::Errors::ApiException
    attr_reader :message  # string
    attr_reader :application_exception_type  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault)
    end
  end
end; end; end
