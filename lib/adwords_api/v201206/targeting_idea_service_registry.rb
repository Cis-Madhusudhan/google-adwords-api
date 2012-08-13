# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.7.3 on 2012-07-04 07:27:43.

require 'adwords_api/errors'

module AdwordsApi; module V201206; module TargetingIdeaService
  class TargetingIdeaServiceRegistry
    TARGETINGIDEASERVICE_METHODS = {:get=>{:input=>[{:name=>:selector, :type=>"TargetingIdeaSelector", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"TargetingIdeaPage", :min_occurs=>0, :max_occurs=>1}]}}, :get_bulk_keyword_ideas=>{:input=>[{:name=>:selector, :type=>"TargetingIdeaSelector", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_bulk_keyword_ideas_response", :fields=>[{:name=>:rval, :type=>"TargetingIdeaPage", :min_occurs=>0, :max_occurs=>1}]}}}
    TARGETINGIDEASERVICE_TYPES = {:AdGroupBidLandscape=>{:fields=>[{:name=>:type, :type=>"AdGroupBidLandscape.Type", :min_occurs=>0, :max_occurs=>1}, {:name=>:landscape_current, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"BidLandscape", :ns=>0}, :AdGroupCriterionLimitExceeded=>{:fields=>[{:name=>:limit_type, :type=>"AdGroupCriterionLimitExceeded.CriteriaLimitType", :min_occurs=>0, :max_occurs=>1}], :base=>"EntityCountLimitExceeded", :ns=>0}, :BidLandscape=>{:fields=>[{:name=>:campaign_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_group_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_date, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:end_date, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:landscape_points, :type=>"BidLandscape.LandscapePoint", :min_occurs=>0, :max_occurs=>:unbounded}], :abstract=>true, :base=>"DataEntry", :ns=>0}, :"BidLandscape.LandscapePoint"=>{:fields=>[{:name=>:bid, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:clicks, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:cost, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:marginal_cpc, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:impressions, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:promoted_impressions, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :ComparableValue=>{:fields=>[{:name=>:comparable_value_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :ns=>0}, :Criterion=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:type, :type=>"Criterion.Type", :min_occurs=>0, :max_occurs=>1}, {:name=>:criterion_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :CriterionBidLandscape=>{:fields=>[{:name=>:criterion_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"BidLandscape", :ns=>0}, :DoubleValue=>{:fields=>[{:name=>:number, :type=>"double", :min_occurs=>0, :max_occurs=>1}], :base=>"NumberValue", :ns=>0}, :EntityCountLimitExceeded=>{:fields=>[{:name=>:reason, :type=>"EntityCountLimitExceeded.Reason", :min_occurs=>0, :max_occurs=>1}, {:name=>:enclosing_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:limit, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :EntityNotFound=>{:fields=>[{:name=>:reason, :type=>"EntityNotFound.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :Keyword=>{:fields=>[{:name=>:text, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:match_type, :type=>"KeywordMatchType", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion", :ns=>0}, :Language=>{:fields=>[{:name=>:code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion", :ns=>0}, :Location=>{:fields=>[{:name=>:location_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:display_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_obsolete, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:parent_locations, :type=>"Location", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Criterion", :ns=>0}, :LongValue=>{:fields=>[{:name=>:number, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"NumberValue", :ns=>0}, :Money=>{:fields=>[{:name=>:micro_amount, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"ComparableValue", :ns=>0}, :NumberValue=>{:fields=>[], :abstract=>true, :base=>"ComparableValue", :ns=>0}, :OperationAccessDenied=>{:fields=>[{:name=>:reason, :type=>"OperationAccessDenied.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :Paging=>{:fields=>[{:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:number_results, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :Placement=>{:fields=>[{:name=>:url, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion", :ns=>0}, :"PolicyViolationError.Part"=>{:fields=>[{:name=>:index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:length, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :PolicyViolationKey=>{:fields=>[{:name=>:policy_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:violating_text, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :Product=>{:fields=>[{:name=>:conditions, :type=>"ProductCondition", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:text, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion", :ns=>0}, :ProductCondition=>{:fields=>[{:name=>:argument, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operand, :type=>"ProductConditionOperand", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :ProductConditionOperand=>{:fields=>[{:name=>:operand, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :SoapHeader=>{:fields=>[{:name=>:auth_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:client_customer_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:developer_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_agent, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:validate_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:partial_failure, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:service_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:method_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operations, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:units, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :DataEntry=>{:fields=>[{:name=>:data_entry_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :ns=>0}, :CriterionUserInterest=>{:fields=>[{:name=>:user_interest_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_interest_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion", :ns=>0}, :CriterionUserList=>{:fields=>[{:name=>:user_list_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_list_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_list_membership_status, :type=>"CriterionUserList.MembershipStatus", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion", :ns=>0}, :Vertical=>{:fields=>[{:name=>:vertical_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:vertical_parent_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:path, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Criterion", :ns=>0}, :"AdGroupBidLandscape.Type"=>{:fields=>[], :ns=>0}, :"AdGroupCriterionLimitExceeded.CriteriaLimitType"=>{:fields=>[], :ns=>0}, :"Criterion.Type"=>{:fields=>[], :ns=>0}, :KeywordMatchType=>{:fields=>[], :ns=>0}, :"CriterionUserList.MembershipStatus"=>{:fields=>[], :ns=>0}, :AdFormatSpec=>{:fields=>[{:name=>:format, :type=>"SiteConstants.AdFormat", :min_occurs=>0, :max_occurs=>1}]}, :AdFormatSpecListAttribute=>{:fields=>[{:name=>:value, :type=>"AdFormatSpec", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Attribute"}, :AdShareSearchParameter=>{:fields=>[{:name=>:operation, :type=>"DoubleComparisonOperation", :min_occurs=>0, :max_occurs=>1}], :base=>"SearchParameter"}, :AdSpec=>{:fields=>[], :choices=>[{:name=>:display_ad_spec, :type=>"DisplayAdSpec", :min_occurs=>1, :max_occurs=>1}, {:name=>:in_stream_ad_spec, :type=>"InStreamAdSpec", :min_occurs=>1, :max_occurs=>1}, {:name=>:text_ad_spec, :type=>"TextAdSpec", :min_occurs=>1, :max_occurs=>1}]}, :AdSpecListAttribute=>{:fields=>[{:name=>:value, :type=>"AdSpec", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Attribute"}, :AdSpecListSearchParameter=>{:fields=>[{:name=>:ad_specs, :type=>"AdSpec", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"SearchParameter"}, :Attribute=>{:fields=>[{:name=>:attribute_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :BidLandscapeAttribute=>{:fields=>[{:name=>:value, :type=>"BidLandscape", :min_occurs=>0, :max_occurs=>1}], :base=>"Attribute"}, :BooleanAttribute=>{:fields=>[{:name=>:value, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"Attribute"}, :CategoryProductsAndServicesSearchParameter=>{:fields=>[{:name=>:category_id, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"SearchParameter"}, :CompetitionSearchParameter=>{:fields=>[{:name=>:levels, :type=>"CompetitionSearchParameter.Level", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"SearchParameter"}, :CriterionAttribute=>{:fields=>[{:name=>:value, :type=>"Criterion", :min_occurs=>0, :max_occurs=>1}], :base=>"Attribute"}, :DeviceTypeSearchParameter=>{:fields=>[{:name=>:device_type, :type=>"DeviceType", :min_occurs=>0, :max_occurs=>1}], :base=>"SearchParameter"}, :DisplayAdSpec=>{:fields=>[{:name=>:display_types, :type=>"DisplayType", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:activation_options, :type=>"DisplayAdSpec.ActivationOption", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:ad_size_specs, :type=>"DisplayAdSpec.AdSizeSpec", :min_occurs=>0, :max_occurs=>:unbounded}]}, :"DisplayAdSpec.AdSizeSpec"=>{:fields=>[{:name=>:width, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:height, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:activation_option_filter, :type=>"DisplayAdSpec.ActivationOption", :min_occurs=>0, :max_occurs=>:unbounded}]}, :DisplayType=>{:fields=>[], :choices=>[{:name=>:flash_display_type, :type=>"FlashDisplayType", :min_occurs=>1, :max_occurs=>1}, {:name=>:html_display_type, :type=>"HtmlDisplayType", :min_occurs=>1, :max_occurs=>1}, {:name=>:image_display_type, :type=>"ImageDisplayType", :min_occurs=>1, :max_occurs=>1}]}, :DoubleAttribute=>{:fields=>[{:name=>:value, :type=>"double", :min_occurs=>0, :max_occurs=>1}], :base=>"Attribute"}, :DoubleComparisonOperation=>{:fields=>[{:name=>:minimum, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:maximum, :type=>"double", :min_occurs=>0, :max_occurs=>1}]}, :ExcludedKeywordSearchParameter=>{:fields=>[{:name=>:keywords, :type=>"Keyword", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"SearchParameter"}, :FlashDisplayType=>{:fields=>[]}, :HtmlDisplayType=>{:fields=>[{:name=>:html_option, :type=>"HtmlDisplayType.HtmlOption", :min_occurs=>0, :max_occurs=>1}]}, :IdeaTextFilterSearchParameter=>{:fields=>[{:name=>:included, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:excluded, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"SearchParameter"}, :IdeaTypeAttribute=>{:fields=>[{:name=>:value, :type=>"IdeaType", :min_occurs=>0, :max_occurs=>1}], :base=>"Attribute"}, :ImageDisplayType=>{:fields=>[]}, :InStreamAdInfo=>{:fields=>[{:name=>:max_ad_duration, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:min_ad_duration, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:median_ad_duration, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:pre_roll_percent, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:mid_roll_percent, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:post_roll_percent, :type=>"double", :min_occurs=>0, :max_occurs=>1}]}, :InStreamAdInfoAttribute=>{:fields=>[{:name=>:value, :type=>"InStreamAdInfo", :min_occurs=>0, :max_occurs=>1}], :base=>"Attribute"}, :InStreamAdSpec=>{:fields=>[{:name=>:in_stream_types, :type=>"InStreamAdSpec.InStreamType", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:durations, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}]}, :IncludeAdultContentSearchParameter=>{:fields=>[], :base=>"SearchParameter"}, :IntegerAttribute=>{:fields=>[{:name=>:value, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"Attribute"}, :IntegerSetAttribute=>{:fields=>[{:name=>:value, :type=>"int", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Attribute"}, :KeywordAttribute=>{:fields=>[{:name=>:value, :type=>"Keyword", :min_occurs=>0, :max_occurs=>1}], :base=>"Attribute"}, :LanguageSearchParameter=>{:fields=>[{:name=>:languages, :type=>"Language", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"SearchParameter"}, :LocationSearchParameter=>{:fields=>[{:name=>:locations, :type=>"Location", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"SearchParameter"}, :LongAttribute=>{:fields=>[{:name=>:value, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"Attribute"}, :LongComparisonOperation=>{:fields=>[{:name=>:minimum, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:maximum, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :LongRangeAttribute=>{:fields=>[{:name=>:value, :type=>"Range", :min_occurs=>0, :max_occurs=>1}], :base=>"Attribute"}, :MoneyAttribute=>{:fields=>[{:name=>:value, :type=>"Money", :min_occurs=>0, :max_occurs=>1}], :base=>"Attribute"}, :MonthlySearchVolume=>{:fields=>[{:name=>:year, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:month, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:count, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :MonthlySearchVolumeAttribute=>{:fields=>[{:name=>:value, :type=>"MonthlySearchVolume", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Attribute"}, :OpportunityIdeaTypeAttribute=>{:fields=>[{:name=>:value, :type=>"OpportunityIdeaType", :min_occurs=>0, :max_occurs=>1}], :base=>"Attribute"}, :PlacementAttribute=>{:fields=>[{:name=>:value, :type=>"Placement", :min_occurs=>0, :max_occurs=>1}], :base=>"Attribute"}, :PlacementTypeAttribute=>{:fields=>[{:name=>:value, :type=>"SiteConstants.PlacementType", :min_occurs=>0, :max_occurs=>1}], :base=>"Attribute"}, :PlacementTypeSearchParameter=>{:fields=>[{:name=>:placement_types, :type=>"SiteConstants.PlacementType", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"SearchParameter"}, :Range=>{:fields=>[{:name=>:min, :type=>"ComparableValue", :min_occurs=>0, :max_occurs=>1}, {:name=>:max, :type=>"ComparableValue", :min_occurs=>0, :max_occurs=>1}]}, :RelatedToQuerySearchParameter=>{:fields=>[{:name=>:queries, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"SearchParameter"}, :RelatedToUrlSearchParameter=>{:fields=>[{:name=>:urls, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:include_sub_urls, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"SearchParameter"}, :SearchParameter=>{:fields=>[{:name=>:search_parameter_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :SearchShareSearchParameter=>{:fields=>[{:name=>:operation, :type=>"DoubleComparisonOperation", :min_occurs=>0, :max_occurs=>1}], :base=>"SearchParameter"}, :SearchVolumeSearchParameter=>{:fields=>[{:name=>:operation, :type=>"LongComparisonOperation", :min_occurs=>0, :max_occurs=>1}], :base=>"SearchParameter"}, :SeedAdGroupIdSearchParameter=>{:fields=>[{:name=>:ad_group_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"SearchParameter"}, :StringAttribute=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Attribute"}, :TargetingIdea=>{:fields=>[{:name=>:data, :type=>"Type_AttributeMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}]}, :TargetingIdeaPage=>{:fields=>[{:name=>:total_num_entries, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:entries, :type=>"TargetingIdea", :min_occurs=>0, :max_occurs=>:unbounded}]}, :TargetingIdeaSelector=>{:fields=>[{:name=>:search_parameters, :type=>"SearchParameter", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:idea_type, :type=>"IdeaType", :min_occurs=>0, :max_occurs=>1}, {:name=>:request_type, :type=>"RequestType", :min_occurs=>0, :max_occurs=>1}, {:name=>:requested_attribute_types, :type=>"AttributeType", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:paging, :type=>"Paging", :min_occurs=>0, :max_occurs=>1}, {:name=>:locale_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:currency_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :TextAdSpec=>{:fields=>[]}, :Type_AttributeMapEntry=>{:fields=>[{:name=>:key, :type=>"AttributeType", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"Attribute", :min_occurs=>0, :max_occurs=>1}]}, :WebpageDescriptor=>{:fields=>[{:name=>:url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:title, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :WebpageDescriptorAttribute=>{:fields=>[{:name=>:value, :type=>"WebpageDescriptor", :min_occurs=>0, :max_occurs=>1}], :base=>"Attribute"}, :AttributeType=>{:fields=>[]}, :"CompetitionSearchParameter.Level"=>{:fields=>[]}, :DeviceType=>{:fields=>[]}, :"DisplayAdSpec.ActivationOption"=>{:fields=>[]}, :"HtmlDisplayType.HtmlOption"=>{:fields=>[]}, :IdeaType=>{:fields=>[]}, :"InStreamAdSpec.InStreamType"=>{:fields=>[]}, :OpportunityIdeaType=>{:fields=>[]}, :RequestType=>{:fields=>[]}, :"SiteConstants.AdFormat"=>{:fields=>[]}, :"SiteConstants.PlacementType"=>{:fields=>[]}}
    TARGETINGIDEASERVICE_NAMESPACES = ["https://adwords.google.com/api/adwords/cm/v201206"]

    def self.get_method_signature(method_name)
      return TARGETINGIDEASERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return TARGETINGIDEASERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return TARGETINGIDEASERVICE_NAMESPACES[index]
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
