# SwaggerClient::ShipMethodsApi

All URIs are relative to *https://servicios.apipre.seur.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pic_v1_ship_methods_get**](ShipMethodsApi.md#pic_v1_ship_methods_get) | **GET** /pic/v1/ship-methods | Get product and service pair


# **pic_v1_ship_methods_get**
> ServiceProductResponse pic_v1_ship_methods_get(authorization, origin_business_unit, destination_business_unit, city_code)

Get product and service pair

Get product and service pair

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ShipMethodsApi.new

authorization = 'authorization_example' # String | Bearer token obtained from SSO

origin_business_unit = 'origin_business_unit_example' # String | Origin business unit

destination_business_unit = 'destination_business_unit_example' # String | Destination business unit

city_code = 'city_code_example' # String | City code


begin
  #Get product and service pair
  result = api_instance.pic_v1_ship_methods_get(authorization, origin_business_unit, destination_business_unit, city_code)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ShipMethodsApi->pic_v1_ship_methods_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer token obtained from SSO | 
 **origin_business_unit** | **String**| Origin business unit | 
 **destination_business_unit** | **String**| Destination business unit | 
 **city_code** | **String**| City code | 

### Return type

[**ServiceProductResponse**](ServiceProductResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8



