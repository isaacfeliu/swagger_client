# SwaggerClient::InternationalServicesApi

All URIs are relative to *https://servicios.apipre.seur.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pic_v1_output_platform_get**](InternationalServicesApi.md#pic_v1_output_platform_get) | **GET** /pic/v1/output-platform | Get output platform
[**pic_v1_routing_oz_post**](InternationalServicesApi.md#pic_v1_routing_oz_post) | **POST** /pic/v1/routing-oz | Calculate routing Operative Zones


# **pic_v1_output_platform_get**
> OutputPlatformResponse pic_v1_output_platform_get(authorization, product_code, service_code, origin_depot, opts)

Get output platform

Get output Platform.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InternationalServicesApi.new

authorization = 'authorization_example' # String | Bearer token obtained from SSO

product_code = 56 # Integer | Product

service_code = 56 # Integer | Service

origin_depot = 56 # Integer | Unity admin origin

opts = { 
  destination_partner: 56, # Integer | Destination agent
  seur_center_id: 56, # Integer | Seur center
  customer_id: 'customer_id_example', # String | Client
  country_iso_code: 'country_iso_code_example', # String | Country
  postal_code: 'postal_code_example', # String | Postal code
  int_product_code: 56, # Integer | International product
  int_service_code: 56, # Integer | International service
  shipment_type: 'shipment_type_example', # String | Shipping type
  city_name: 'city_name_example' # String | city name
}

begin
  #Get output platform
  result = api_instance.pic_v1_output_platform_get(authorization, product_code, service_code, origin_depot, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InternationalServicesApi->pic_v1_output_platform_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer token obtained from SSO | 
 **product_code** | **Integer**| Product | 
 **service_code** | **Integer**| Service | 
 **origin_depot** | **Integer**| Unity admin origin | 
 **destination_partner** | **Integer**| Destination agent | [optional] 
 **seur_center_id** | **Integer**| Seur center | [optional] 
 **customer_id** | **String**| Client | [optional] 
 **country_iso_code** | **String**| Country | [optional] 
 **postal_code** | **String**| Postal code | [optional] 
 **int_product_code** | **Integer**| International product | [optional] 
 **int_service_code** | **Integer**| International service | [optional] 
 **shipment_type** | **String**| Shipping type | [optional] 
 **city_name** | **String**| city name | [optional] 

### Return type

[**OutputPlatformResponse**](OutputPlatformResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8



# **pic_v1_routing_oz_post**
> RoutingOZResponse pic_v1_routing_oz_post(authorization, input)

Calculate routing Operative Zones

Calculate routing operative zones.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InternationalServicesApi.new

authorization = 'authorization_example' # String | Bearer token obtained from SSO

input = SwaggerClient::RoutingOZRequestBody.new # RoutingOZRequestBody | Operating areas


begin
  #Calculate routing Operative Zones
  result = api_instance.pic_v1_routing_oz_post(authorization, input)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InternationalServicesApi->pic_v1_routing_oz_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer token obtained from SSO | 
 **input** | [**RoutingOZRequestBody**](RoutingOZRequestBody.md)| Operating areas | 

### Return type

[**RoutingOZResponse**](RoutingOZResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/json;charset=UTF-8



