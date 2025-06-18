# SwaggerClient::LiveTrackingApi

All URIs are relative to *https://servicios.apipre.seur.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pic_v1_livetracking_get**](LiveTrackingApi.md#pic_v1_livetracking_get) | **GET** /pic/v1/livetracking | Get Live tracking from request


# **pic_v1_livetracking_get**
> LiveTrackingResponse pic_v1_livetracking_get(authorization, id_number, ref, opts)

Get Live tracking from request

Get live tracking

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::LiveTrackingApi.new

authorization = 'authorization_example' # String | Bearer token obtained from SSO

id_number = 'id_number_example' # String | id number. Example: A480001

ref = 'ref_example' # String | Reference. Example: REF0001234

opts = { 
  account_number: 'account_number_example', # String | Account Number. Example: 123456
  business_unit: 'business_unit_example', # String | Business Unit. Example: 123456
  ref_type: 'ref_type_example', # String | Reference type. Example: REFERENCE
  sandbox: false # BOOLEAN | Enables sandbox. Example: false
}

begin
  #Get Live tracking from request
  result = api_instance.pic_v1_livetracking_get(authorization, id_number, ref, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LiveTrackingApi->pic_v1_livetracking_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer token obtained from SSO | 
 **id_number** | **String**| id number. Example: A480001 | 
 **ref** | **String**| Reference. Example: REF0001234 | 
 **account_number** | **String**| Account Number. Example: 123456 | [optional] 
 **business_unit** | **String**| Business Unit. Example: 123456 | [optional] 
 **ref_type** | **String**| Reference type. Example: REFERENCE | [optional] 
 **sandbox** | **BOOLEAN**| Enables sandbox. Example: false | [optional] [default to false]

### Return type

[**LiveTrackingResponse**](LiveTrackingResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8



