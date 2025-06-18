# SwaggerClient::LeadTimeServicesApi

All URIs are relative to *https://servicios.apipre.seur.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pic_v1_zip_to_zipcodes_post**](LeadTimeServicesApi.md#pic_v1_zip_to_zipcodes_post) | **POST** /pic/v1/zip-to-zipcodes | Lead time between two postal codes


# **pic_v1_zip_to_zipcodes_post**
> ZipToZipcodesResponse pic_v1_zip_to_zipcodes_post(authorization, opts)

Lead time between two postal codes

Provides the door-to-door transit time between two postal codes

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::LeadTimeServicesApi.new

authorization = 'authorization_example' # String | Bearer token obtained from SSO

opts = { 
  input: SwaggerClient::ZipToZipcodesRequest.new # ZipToZipcodesRequest | The pickup to create
}

begin
  #Lead time between two postal codes
  result = api_instance.pic_v1_zip_to_zipcodes_post(authorization, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LeadTimeServicesApi->pic_v1_zip_to_zipcodes_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer token obtained from SSO | 
 **input** | [**ZipToZipcodesRequest**](ZipToZipcodesRequest.md)| The pickup to create | [optional] 

### Return type

[**ZipToZipcodesResponse**](ZipToZipcodesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/json;charset=UTF-8



