# SwaggerClient::PodServicesApi

All URIs are relative to *https://servicios.apipre.seur.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pic_v1_pods_get**](PodServicesApi.md#pic_v1_pods_get) | **GET** /pic/v1/pods | Get pods


# **pic_v1_pods_get**
> PodResponse pic_v1_pods_get(authorization, id_number, ref, ref_type, opts)

Get pods

Filter pods by reference, idNumber or ccc

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PodServicesApi.new

authorization = 'authorization_example' # String | Bearer token obtained from SSO

id_number = 'id_number_example' # String | Id Number code. Example: B03260684

ref = 'ref_example' # String | Reference code. Example: 866075/4SHZQ6YLMEJ7BF

ref_type = 'ref_type_example' # String | Reference type. Example: REFERENCE | ECB | PARCEL_NUMBER | SECOND_REFERENCE | PACK_REFERENCE

opts = { 
  account_number: 'account_number_example', # String | Account Number. Example: 20855
  business_unit: 'business_unit_example', # String | Business Unit code: Example: 80
  sandbox: false, # BOOLEAN | enables sandbox mode. Example: false
  pod_type: 'pod_type_example' # String | Pod type. Example: CONTENT | LINK. By default is CONTENT
}

begin
  #Get pods
  result = api_instance.pic_v1_pods_get(authorization, id_number, ref, ref_type, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PodServicesApi->pic_v1_pods_get: #{e}"
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
 **sandbox** | **BOOLEAN**| enables sandbox mode. Example: false | [optional] [default to false]
 **pod_type** | **String**| Pod type. Example: CONTENT | LINK. By default is CONTENT | [optional] 

### Return type

[**PodResponse**](PodResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8



