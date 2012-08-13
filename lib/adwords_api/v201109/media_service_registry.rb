# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.7.3 on 2012-07-04 07:23:31.

require 'adwords_api/errors'

module AdwordsApi; module V201109; module MediaService
  class MediaServiceRegistry
    MEDIASERVICE_METHODS = {:get=>{:input=>[{:name=>:service_selector, :type=>"Selector", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"MediaPage", :min_occurs=>0, :max_occurs=>1}]}}, :upload=>{:input=>[{:name=>:media, :type=>"Media", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"upload_response", :fields=>[{:name=>:rval, :type=>"Media", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    MEDIASERVICE_TYPES = {:Audio=>{:fields=>[{:name=>:duration_millis, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:streaming_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:ready_to_play_on_the_web, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"Media"}, :DateRange=>{:fields=>[{:name=>:min, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:max, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :Dimensions=>{:fields=>[{:name=>:width, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:height, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :EntityNotFound=>{:fields=>[{:name=>:reason, :type=>"EntityNotFound.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Image=>{:fields=>[{:name=>:data, :type=>"base64Binary", :min_occurs=>0, :max_occurs=>1}], :base=>"Media"}, :Media_Size_DimensionsMapEntry=>{:fields=>[{:name=>:key, :type=>"Media.Size", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"Dimensions", :min_occurs=>0, :max_occurs=>1}]}, :Media_Size_StringMapEntry=>{:fields=>[{:name=>:key, :type=>"Media.Size", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :OperationAccessDenied=>{:fields=>[{:name=>:reason, :type=>"OperationAccessDenied.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :OrderBy=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:sort_order, :type=>"SortOrder", :min_occurs=>0, :max_occurs=>1}]}, :Paging=>{:fields=>[{:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:number_results, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :Predicate=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operator, :type=>"Predicate.Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}]}, :SoapHeader=>{:fields=>[{:name=>:auth_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:client_customer_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:developer_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_agent, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:validate_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:partial_failure, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:service_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:method_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operations, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:units, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :Video=>{:fields=>[{:name=>:duration_millis, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:streaming_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:ready_to_play_on_the_web, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:industry_standard_commercial_identifier, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:advertising_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:you_tube_video_id_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Media"}, :Selector=>{:fields=>[{:name=>:fields, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:predicates, :type=>"Predicate", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:date_range, :type=>"DateRange", :min_occurs=>0, :max_occurs=>1}, {:name=>:ordering, :type=>"OrderBy", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:paging, :type=>"Paging", :min_occurs=>0, :max_occurs=>1}]}, :Media=>{:fields=>[{:name=>:media_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:type, :type=>"Media.MediaType", :min_occurs=>0, :max_occurs=>1}, {:name=>:reference_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:dimensions, :type=>"Media_Size_DimensionsMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:urls, :type=>"Media_Size_StringMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:mime_type, :type=>"Media.MimeType", :min_occurs=>0, :max_occurs=>1}, {:name=>:source_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:file_size, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:creation_time, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:media_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :MediaPage=>{:fields=>[{:name=>:entries, :type=>"Media", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:total_num_entries, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :"Media.MediaType"=>{:fields=>[]}, :"Media.MimeType"=>{:fields=>[]}, :"Media.Size"=>{:fields=>[]}, :"Predicate.Operator"=>{:fields=>[]}, :SortOrder=>{:fields=>[]}}
    MEDIASERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return MEDIASERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return MEDIASERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return MEDIASERVICE_NAMESPACES[index]
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
