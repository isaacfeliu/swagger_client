# SwaggerClient::CustomsServicesApi

All URIs are relative to *https://servicios.apipre.seur.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pic_v1_customs_get**](CustomsServicesApi.md#pic_v1_customs_get) | **GET** /pic/v1/customs | Customs services


# **pic_v1_customs_get**
> CustomsResponse pic_v1_customs_get(authorization, origin_depot, destination_depot, opts)

Customs services

Customs services by originDepot, destinationDepot, serviceCode, shipmentType, shipmentWeight and shipmentValue 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CustomsServicesApi.new

authorization = 'authorization_example' # String | Bearer token obtained from SSO

origin_depot = 'origin_depot_example' # String | Origin Depot. Example: \"47\"

destination_depot = 'destination_depot_example' # String | Destination Depot. Example: \"52\"

opts = { 
  service_code: 'service_code_example', # String | Service Code. Example: \"1\"
  shipment_type: 'shipment_type_example', # String | shipment Type. Example: \"D\"
  shipment_weight: 'shipment_weight_example', # String | Shipment Weight. Example: \"16\"
  shipment_value: 'shipment_value_example' # String | Shipment Value. Example: \"160
}

begin
  #Customs services
  result = api_instance.pic_v1_customs_get(authorization, origin_depot, destination_depot, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CustomsServicesApi->pic_v1_customs_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer token obtained from SSO | 
 **origin_depot** | **String**| Origin Depot. Example: \&quot;47\&quot; | 
 **destination_depot** | **String**| Destination Depot. Example: \&quot;52\&quot; | 
 **service_code** | **String**| Service Code. Example: \&quot;1\&quot; | [optional] 
 **shipment_type** | **String**| shipment Type. Example: \&quot;D\&quot; | [optional] 
 **shipment_weight** | **String**| Shipment Weight. Example: \&quot;16\&quot; | [optional] 
 **shipment_value** | **String**| Shipment Value. Example: \&quot;160 | [optional] 

### Return type

[**CustomsResponse**](CustomsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/json;charset=UTF-8, text/plain;charset=UTF-8



