# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.7.3 on 2012-07-04 07:24:38.

require 'adwords_api/errors'

module AdwordsApi; module V201109_1; module CampaignAdExtensionService
  class CampaignAdExtensionServiceRegistry
    CAMPAIGNADEXTENSIONSERVICE_METHODS = {:get=>{:input=>[{:name=>:service_selector, :type=>"Selector", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"CampaignAdExtensionPage", :min_occurs=>0, :max_occurs=>1}]}}, :mutate=>{:input=>[{:name=>:operations, :type=>"CampaignAdExtensionOperation", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"mutate_response", :fields=>[{:name=>:rval, :type=>"CampaignAdExtensionReturnValue", :min_occurs=>0, :max_occurs=>1}]}}}
    CAMPAIGNADEXTENSIONSERVICE_TYPES = {:Address=>{:fields=>[{:name=>:street_address, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:street_address2, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:city_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:province_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:province_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:postal_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:country_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :CampaignAdExtensionStats=>{:fields=>[], :base=>"Stats"}, :DateRange=>{:fields=>[{:name=>:min, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:max, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DoubleValue=>{:fields=>[{:name=>:number, :type=>"double", :min_occurs=>0, :max_occurs=>1}], :base=>"NumberValue"}, :EntityNotFound=>{:fields=>[{:name=>:reason, :type=>"EntityNotFound.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :GeoPoint=>{:fields=>[{:name=>:latitude_in_micro_degrees, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:longitude_in_micro_degrees, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :LongValue=>{:fields=>[{:name=>:number, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"NumberValue"}, :MobileExtension=>{:fields=>[{:name=>:phone_number, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:country_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_call_tracking_enabled, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_call_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"AdExtension"}, :NumberValue=>{:fields=>[], :abstract=>true, :base=>"ComparableValue"}, :OAuthInfo=>{:fields=>[{:name=>:http_method, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:http_request_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:http_authorization_header, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :OperationAccessDenied=>{:fields=>[{:name=>:reason, :type=>"OperationAccessDenied.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :OrderBy=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:sort_order, :type=>"SortOrder", :min_occurs=>0, :max_occurs=>1}]}, :Paging=>{:fields=>[{:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:number_results, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :Predicate=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operator, :type=>"Predicate.Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}]}, :ProductConditionOperand=>{:fields=>[{:name=>:operand, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :Sitelink=>{:fields=>[{:name=>:display_text, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:destination_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :SitelinksExtension=>{:fields=>[{:name=>:sitelinks, :type=>"Sitelink", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"AdExtension"}, :SoapHeader=>{:fields=>[{:name=>:auth_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:client_customer_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:developer_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_agent, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:validate_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:partial_failure, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:service_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:method_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operations, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:units, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :LocationExtension=>{:fields=>[{:name=>:address, :type=>"Address", :min_occurs=>0, :max_occurs=>1}, {:name=>:geo_point, :type=>"GeoPoint", :min_occurs=>0, :max_occurs=>1}, {:name=>:encoded_location, :type=>"base64Binary", :min_occurs=>0, :max_occurs=>1}, {:name=>:company_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:phone_number, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:source, :type=>"LocationExtension.Source", :min_occurs=>0, :max_occurs=>1}, {:name=>:icon_media_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:image_media_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"AdExtension"}, :Money=>{:fields=>[{:name=>:micro_amount, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"ComparableValue"}, :ProductCondition=>{:fields=>[{:name=>:argument, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operand, :type=>"ProductConditionOperand", :min_occurs=>0, :max_occurs=>1}]}, :ProductConditionAndGroup=>{:fields=>[{:name=>:conditions, :type=>"ProductCondition", :min_occurs=>0, :max_occurs=>:unbounded}]}, :ProductExtension=>{:fields=>[{:name=>:google_base_customer_id, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:advertiser_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:product_selection, :type=>"ProductConditionAndGroup", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"AdExtension"}, :Selector=>{:fields=>[{:name=>:fields, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:predicates, :type=>"Predicate", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:date_range, :type=>"DateRange", :min_occurs=>0, :max_occurs=>1}, {:name=>:ordering, :type=>"OrderBy", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:paging, :type=>"Paging", :min_occurs=>0, :max_occurs=>1}]}, :ComparableValue=>{:fields=>[{:name=>:comparable_value_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :LocationSyncExtension=>{:fields=>[{:name=>:email, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:auth_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:o_auth_info, :type=>"OAuthInfo", :min_occurs=>0, :max_occurs=>1}, {:name=>:icon_media_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:should_sync_url, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"AdExtension"}, :Stats=>{:fields=>[{:name=>:start_date, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:end_date, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:network, :type=>"Stats.Network", :min_occurs=>0, :max_occurs=>1}, {:name=>:clicks, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:impressions, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:cost, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:average_position, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:average_cpc, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:average_cpm, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:ctr, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:conversions, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:conversion_rate, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:cost_per_conversion, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:conversions_many_per_click, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:conversion_rate_many_per_click, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:cost_per_conversion_many_per_click, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:view_through_conversions, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:total_conv_value, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:value_per_conv, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:value_per_conv_many_per_click, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:invalid_clicks, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:invalid_click_rate, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:num_calls, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:num_missed_calls, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:num_received_calls, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:call_duration_secs, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:avg_call_duration_secs, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:num_offline_impressions, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:num_offline_interactions, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:offline_interaction_rate, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:avg_cost_for_offline_interaction, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:offline_interaction_cost, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:stats_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :AdExtension=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_extension_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :CampaignAdExtension=>{:fields=>[{:name=>:campaign_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_extension, :type=>"AdExtension", :min_occurs=>0, :max_occurs=>1}, {:name=>:status, :type=>"CampaignAdExtension.Status", :min_occurs=>0, :max_occurs=>1}, {:name=>:approval_status, :type=>"CampaignAdExtension.ApprovalStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:stats, :type=>"CampaignAdExtensionStats", :min_occurs=>0, :max_occurs=>1}]}, :CampaignAdExtensionOperation=>{:fields=>[{:name=>:operand, :type=>"CampaignAdExtension", :min_occurs=>0, :max_occurs=>1}], :base=>"Operation"}, :CampaignAdExtensionPage=>{:fields=>[{:name=>:entries, :type=>"CampaignAdExtension", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Page"}, :CampaignAdExtensionReturnValue=>{:fields=>[{:name=>:value, :type=>"CampaignAdExtension", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ListReturnValue"}, :ListReturnValue=>{:fields=>[{:name=>:list_return_value_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :Operation=>{:fields=>[{:name=>:operator, :type=>"Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:operation_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :Page=>{:fields=>[{:name=>:total_num_entries, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:page_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :"CampaignAdExtension.ApprovalStatus"=>{:fields=>[]}, :"CampaignAdExtension.Status"=>{:fields=>[]}, :"LocationExtension.Source"=>{:fields=>[]}, :Operator=>{:fields=>[]}, :"Predicate.Operator"=>{:fields=>[]}, :SortOrder=>{:fields=>[]}, :"Stats.Network"=>{:fields=>[]}}
    CAMPAIGNADEXTENSIONSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return CAMPAIGNADEXTENSIONSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return CAMPAIGNADEXTENSIONSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return CAMPAIGNADEXTENSIONSERVICE_NAMESPACES[index]
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
