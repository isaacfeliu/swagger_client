# SwaggerClient::CollectionsServicesApi

All URIs are relative to *https://servicios.apipre.seur.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pic_v1_collections_cancel_post**](CollectionsServicesApi.md#pic_v1_collections_cancel_post) | **POST** /pic/v1/collections/cancel | Cancel existing collection
[**pic_v1_collections_post**](CollectionsServicesApi.md#pic_v1_collections_post) | **POST** /pic/v1/collections | Create a new collection
[**pic_v1_collections_time_slots_get**](CollectionsServicesApi.md#pic_v1_collections_time_slots_get) | **GET** /pic/v1/collections/time-slots | Get time-slot from collection


# **pic_v1_collections_cancel_post**
> CollectionCancelResponse pic_v1_collections_cancel_post(authorization, opts)

Cancel existing collection

Cancel existing collection

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CollectionsServicesApi.new

authorization = 'authorization_example' # String | Bearer token obtained from SSO

opts = { 
  collection: SwaggerClient::Collection.new # Collection | Collection codes to cancel
}

begin
  #Cancel existing collection
  result = api_instance.pic_v1_collections_cancel_post(authorization, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CollectionsServicesApi->pic_v1_collections_cancel_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer token obtained from SSO | 
 **collection** | [**Collection**](Collection.md)| Collection codes to cancel | [optional] 

### Return type

[**CollectionCancelResponse**](CollectionCancelResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/json;charset=UTF-8



# **pic_v1_collections_post**
> CollectionResponse pic_v1_collections_post(authorization, opts)

Create a new collection

Create a new collection: The customer can only create pickups for the ccc it has access

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CollectionsServicesApi.new

authorization = 'authorization_example' # String | Bearer token obtained from SSO

opts = { 
  input: SwaggerClient::CollectionRequestBody.new # CollectionRequestBody | The pickup to create
}

begin
  #Create a new collection
  result = api_instance.pic_v1_collections_post(authorization, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CollectionsServicesApi->pic_v1_collections_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer token obtained from SSO | 
 **input** | [**CollectionRequestBody**](CollectionRequestBody.md)| The pickup to create | [optional] 

### Return type

[**CollectionResponse**](CollectionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/json;charset=UTF-8



# **pic_v1_collections_time_slots_get**
> TimeSlotResponse pic_v1_collections_time_slots_get(authorization, origin_city_code, product_code, service_code, origin_business_unit, postal_code, opts)

Get time-slot from collection

Get time slots

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CollectionsServicesApi.new

authorization = 'authorization_example' # String | Bearer token obtained from SSO

origin_city_code = 'origin_city_code_example' # String | Origin City Code. Example: 480001

product_code = 'product_code_example' # String | Product Code. Example: 2

service_code = 'service_code_example' # String | Service Code. Example: 1

origin_business_unit = 'origin_business_unit_example' # String | Origin Business Unit. Example: 48

postal_code = 'postal_code_example' # String | Postal Code. Example: 47010

opts = { 
  current_system_date: 'current_system_date_example', # String | Current System Date. Example: \"2020-09-17\"
  requested_date: 'requested_date_example', # String | Requested date. Example: 2020-09-20
  destination_business_unit: 'destination_business_unit_example', # String | Destination Business Unit. Example: 28
  destination_city_code: 'destination_city_code_example', # String | Destination City Code. Example: 28
  current_system_time: 'current_system_time_example' # String | Current System Time. Example: 12:30
}

begin
  #Get time-slot from collection
  result = api_instance.pic_v1_collections_time_slots_get(authorization, origin_city_code, product_code, service_code, origin_business_unit, postal_code, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CollectionsServicesApi->pic_v1_collections_time_slots_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer token obtained from SSO | 
 **origin_city_code** | **String**| Origin City Code. Example: 480001 | 
 **product_code** | **String**| Product Code. Example: 2 | 
 **service_code** | **String**| Service Code. Example: 1 | 
 **origin_business_unit** | **String**| Origin Business Unit. Example: 48 | 
 **postal_code** | **String**| Postal Code. Example: 47010 | 
 **current_system_date** | **String**| Current System Date. Example: \&quot;2020-09-17\&quot; | [optional] 
 **requested_date** | **String**| Requested date. Example: 2020-09-20 | [optional] 
 **destination_business_unit** | **String**| Destination Business Unit. Example: 28 | [optional] 
 **destination_city_code** | **String**| Destination City Code. Example: 28 | [optional] 
 **current_system_time** | **String**| Current System Time. Example: 12:30 | [optional] 

### Return type

[**TimeSlotResponse**](TimeSlotResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8



