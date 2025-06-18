# SwaggerClient::ValuateServicesApi

All URIs are relative to *https://servicios.apipre.seur.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pic_v1_valuate_post**](ValuateServicesApi.md#pic_v1_valuate_post) | **POST** /pic/v1/valuate | Valuate (National and International)


# **pic_v1_valuate_post**
> ValuateResponseBody pic_v1_valuate_post(authorization, input)

Valuate (National and International)

Valuate (National and International).

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ValuateServicesApi.new

authorization = 'authorization_example' # String | Bearer token obtained from SSO

input = SwaggerClient::ValuateRequestBody.new # ValuateRequestBody | Valuate


begin
  #Valuate (National and International)
  result = api_instance.pic_v1_valuate_post(authorization, input)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ValuateServicesApi->pic_v1_valuate_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer token obtained from SSO | 
 **input** | [**ValuateRequestBody**](ValuateRequestBody.md)| Valuate | 

### Return type

[**ValuateResponseBody**](ValuateResponseBody.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/json;charset=UTF-8



