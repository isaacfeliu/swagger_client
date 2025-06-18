# SwaggerClient::PickupCentresServicesApi

All URIs are relative to *https://servicios.apipre.seur.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pic_v1_pickups_get**](PickupCentresServicesApi.md#pic_v1_pickups_get) | **GET** /pic/v1/pickups | Filter centres


# **pic_v1_pickups_get**
> CentresResponse pic_v1_pickups_get(authorization, country_code, postal_code, city_name, opts)

Filter centres

Filter centres by country, postal code and city name

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PickupCentresServicesApi.new

authorization = 'authorization_example' # String | Bearer token obtained from SSO

country_code = 'country_code_example' # String | Country code. Example: \"ES\"

postal_code = 'postal_code_example' # String | Postal code: Example. \"47270\"

city_name = 'city_name_example' # String | City name: Example. \"Cigales\"

opts = { 
  centre_type: 'centre_type_example', # String | Centre type: Example. \"U\"
  exclude_code_sector: 'exclude_code_sector_example' # String | Sector code excluded. Example: \"400\"
}

begin
  #Filter centres
  result = api_instance.pic_v1_pickups_get(authorization, country_code, postal_code, city_name, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PickupCentresServicesApi->pic_v1_pickups_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer token obtained from SSO | 
 **country_code** | **String**| Country code. Example: \&quot;ES\&quot; | 
 **postal_code** | **String**| Postal code: Example. \&quot;47270\&quot; | 
 **city_name** | **String**| City name: Example. \&quot;Cigales\&quot; | 
 **centre_type** | **String**| Centre type: Example. \&quot;U\&quot; | [optional] 
 **exclude_code_sector** | **String**| Sector code excluded. Example: \&quot;400\&quot; | [optional] 

### Return type

[**CentresResponse**](CentresResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/json;charset=UTF-8, text/plain;charset=UTF-8



