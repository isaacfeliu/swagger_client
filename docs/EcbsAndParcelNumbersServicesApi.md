# SwaggerClient::EcbsAndParcelNumbersServicesApi

All URIs are relative to *https://servicios.apipre.seur.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pic_v1_ecbs_pn_post**](EcbsAndParcelNumbersServicesApi.md#pic_v1_ecbs_pn_post) | **POST** /pic/v1/ecbs-pn | Filter ECBs and parcel numbers


# **pic_v1_ecbs_pn_post**
> EcbsResponse pic_v1_ecbs_pn_post(authorization, opts)

Filter ECBs and parcel numbers

Get a list of ecbs or/and parcel numbers

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EcbsAndParcelNumbersServicesApi.new

authorization = 'authorization_example' # String | Bearer token obtained from SSO

opts = { 
  input: SwaggerClient::ECBsAndParcelsRequestBody.new # ECBsAndParcelsRequestBody | The pickup to create
}

begin
  #Filter ECBs and parcel numbers
  result = api_instance.pic_v1_ecbs_pn_post(authorization, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EcbsAndParcelNumbersServicesApi->pic_v1_ecbs_pn_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer token obtained from SSO | 
 **input** | [**ECBsAndParcelsRequestBody**](ECBsAndParcelsRequestBody.md)| The pickup to create | [optional] 

### Return type

[**EcbsResponse**](EcbsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/json;charset=UTF-8



