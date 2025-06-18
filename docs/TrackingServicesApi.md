# SwaggerClient::TrackingServicesApi

All URIs are relative to *https://servicios.apipre.seur.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pic_v1_tracking_services_extended_get**](TrackingServicesApi.md#pic_v1_tracking_services_extended_get) | **GET** /pic/v1/tracking-services/extended | Get situations in extended format
[**pic_v1_tracking_services_simplified_get**](TrackingServicesApi.md#pic_v1_tracking_services_simplified_get) | **GET** /pic/v1/tracking-services/simplified | Get situations in simplified format


# **pic_v1_tracking_services_extended_get**
> ExtendedSituationResponse pic_v1_tracking_services_extended_get(authorization, id_number, ref, ref_type, opts)

Get situations in extended format

Filter situations by reference, idNumber or ccc

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TrackingServicesApi.new

authorization = 'authorization_example' # String | Bearer token obtained from SSO

id_number = 'id_number_example' # String | Id Number code. Example: B03260684

ref = 'ref_example' # String | Reference code. Example: 866075/4SHZQ6YLMEJ7BF

ref_type = 'ref_type_example' # String | Reference type. Example: REFERENCE | ECB | PARCEL_NUMBER | SECOND_REFERENCE | PACK_REFERENCE

opts = { 
  account_number: 'account_number_example', # String | Account Number. Example: 20855
  business_unit: 'business_unit_example', # String | Business Unit code: Example: 80
  sandbox: false # BOOLEAN | run executions en mode sandbox Example: false
}

begin
  #Get situations in extended format
  result = api_instance.pic_v1_tracking_services_extended_get(authorization, id_number, ref, ref_type, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TrackingServicesApi->pic_v1_tracking_services_extended_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer token obtained from SSO | 
 **id_number** | **String**| Id Number code. Example: B03260684 | 
 **ref** | **String**| Reference code. Example: 866075/4SHZQ6YLMEJ7BF | 
 **ref_type** | **String**| Reference type. Example: REFERENCE | ECB | PARCEL_NUMBER | SECOND_REFERENCE | PACK_REFERENCE | 
 **account_number** | **String**| Account Number. Example: 20855 | [optional] 
 **business_unit** | **String**| Business Unit code: Example: 80 | [optional] 
 **sandbox** | **BOOLEAN**| run executions en mode sandbox Example: false | [optional] [default to false]

### Return type

[**ExtendedSituationResponse**](ExtendedSituationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8



# **pic_v1_tracking_services_simplified_get**
> SimplifiedSituationResponse pic_v1_tracking_services_simplified_get(authorization, id_number, ref, ref_type, opts)

Get situations in simplified format

Filter situations by reference, idNumber or ccc

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TrackingServicesApi.new

authorization = 'authorization_example' # String | Bearer token obtained from SSO

id_number = 'id_number_example' # String | Id Number code. Example: B03260684

ref = 'ref_example' # String | Reference code. Example: 866075/4SHZQ6YLMEJ7BF

ref_type = 'ref_type_example' # String | Reference type. Example: REFERENCE | ECB | PARCEL_NUMBER | SECOND_REFERENCE | PACK_REFERENCE

opts = { 
  account_number: 'account_number_example', # String | Account Number. Example: 20855
  business_unit: 'business_unit_example', # String | Business Unit code: Example: 80
  sandbox: true # BOOLEAN | run in sandbox mode Example: false
}

begin
  #Get situations in simplified format
  result = api_instance.pic_v1_tracking_services_simplified_get(authorization, id_number, ref, ref_type, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TrackingServicesApi->pic_v1_tracking_services_simplified_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer token obtained from SSO | 
 **id_number** | **String**| Id Number code. Example: B03260684 | 
 **ref** | **String**| Reference code. Example: 866075/4SHZQ6YLMEJ7BF | 
 **ref_type** | **String**| Reference type. Example: REFERENCE | ECB | PARCEL_NUMBER | SECOND_REFERENCE | PACK_REFERENCE | 
 **account_number** | **String**| Account Number. Example: 20855 | [optional] 
 **business_unit** | **String**| Business Unit code: Example: 80 | [optional] 
 **sandbox** | **BOOLEAN**| run in sandbox mode Example: false | [optional] 

### Return type

[**SimplifiedSituationResponse**](SimplifiedSituationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8



