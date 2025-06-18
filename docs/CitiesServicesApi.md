# SwaggerClient::CitiesServicesApi

All URIs are relative to *https://servicios.apipre.seur.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pic_v1_cities_get**](CitiesServicesApi.md#pic_v1_cities_get) | **GET** /pic/v1/cities | Filter cities


# **pic_v1_cities_get**
> CitiesResponse pic_v1_cities_get(authorization, country_code, postal_code, opts)

Filter cities

Filter cities by country, postal code and city name

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CitiesServicesApi.new

authorization = 'authorization_example' # String | Bearer token obtained from SSO

country_code = 'country_code_example' # String | Country code. Example : \"ES\"

postal_code = 'postal_code_example' # String | Postal code. Example : \"47001\"

opts = { 
  city_name: 'city_name_example' # String | City name. Example : \"Valladolid\"
}

begin
  #Filter cities
  result = api_instance.pic_v1_cities_get(authorization, country_code, postal_code, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CitiesServicesApi->pic_v1_cities_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer token obtained from SSO | 
 **country_code** | **String**| Country code. Example : \&quot;ES\&quot; | 
 **postal_code** | **String**| Postal code. Example : \&quot;47001\&quot; | 
 **city_name** | **String**| City name. Example : \&quot;Valladolid\&quot; | [optional] 

### Return type

[**CitiesResponse**](CitiesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/json;charset=UTF-8, text/plain;charset=UTF-8



