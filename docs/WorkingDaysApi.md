# SwaggerClient::WorkingDaysApi

All URIs are relative to *https://servicios.apipre.seur.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pic_v1_next_working_day_get**](WorkingDaysApi.md#pic_v1_next_working_day_get) | **GET** /pic/v1/next-working-day | Get the next available working day


# **pic_v1_next_working_day_get**
> NextWorkingDayResponse pic_v1_next_working_day_get(authorization, country_code, postal_code, date)

Get the next available working day

Get next working day

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::WorkingDaysApi.new

authorization = 'authorization_example' # String | Bearer token obtained from SSO

country_code = 'country_code_example' # String | Country Code. Example: ES

postal_code = 'postal_code_example' # String | Postal Code. Example: 123456

date = Date.parse('2013-10-20') # Date | Date to search from. Example: 2024-01-01


begin
  #Get the next available working day
  result = api_instance.pic_v1_next_working_day_get(authorization, country_code, postal_code, date)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WorkingDaysApi->pic_v1_next_working_day_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer token obtained from SSO | 
 **country_code** | **String**| Country Code. Example: ES | 
 **postal_code** | **String**| Postal Code. Example: 123456 | 
 **date** | **Date**| Date to search from. Example: 2024-01-01 | 

### Return type

[**NextWorkingDayResponse**](NextWorkingDayResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8



