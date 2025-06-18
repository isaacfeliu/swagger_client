# SwaggerClient::ShipmentsServicesApi

All URIs are relative to *https://servicios.apipre.seur.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pic_v1_shipments_addpack_put**](ShipmentsServicesApi.md#pic_v1_shipments_addpack_put) | **PUT** /pic/v1/shipments/addpack | Add parcel to shipment
[**pic_v1_shipments_cancel_post**](ShipmentsServicesApi.md#pic_v1_shipments_cancel_post) | **POST** /pic/v1/shipments/cancel | Cancel existing shipment
[**pic_v1_shipments_deletepack_put**](ShipmentsServicesApi.md#pic_v1_shipments_deletepack_put) | **PUT** /pic/v1/shipments/deletepack | Delete parcel from shipment
[**pic_v1_shipments_post**](ShipmentsServicesApi.md#pic_v1_shipments_post) | **POST** /pic/v1/shipments | Create a new shipment
[**pic_v1_shipments_update_put**](ShipmentsServicesApi.md#pic_v1_shipments_update_put) | **PUT** /pic/v1/shipments/update | Update shipment


# **pic_v1_shipments_addpack_put**
> ShipmentAddPackResponse pic_v1_shipments_addpack_put(authorization, opts)

Add parcel to shipment

Add parcel to shipment

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ShipmentsServicesApi.new

authorization = 'authorization_example' # String | Bearer token obtained from SSO

opts = { 
  input: SwaggerClient::AddPack.new # AddPack | Parcel to add. In case shipmentCode is present it will ignore ccc, fracnhise, date and reference.
}

begin
  #Add parcel to shipment
  result = api_instance.pic_v1_shipments_addpack_put(authorization, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ShipmentsServicesApi->pic_v1_shipments_addpack_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer token obtained from SSO | 
 **input** | [**AddPack**](AddPack.md)| Parcel to add. In case shipmentCode is present it will ignore ccc, fracnhise, date and reference. | [optional] 

### Return type

[**ShipmentAddPackResponse**](ShipmentAddPackResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/json;charset=UTF-8



# **pic_v1_shipments_cancel_post**
> ShipmentCancelResponse pic_v1_shipments_cancel_post(authorization, opts)

Cancel existing shipment

Cancel existing shipment

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ShipmentsServicesApi.new

authorization = 'authorization_example' # String | Bearer token obtained from SSO

opts = { 
  codes: SwaggerClient::Codes.new # Codes | Collection codes to cancel
}

begin
  #Cancel existing shipment
  result = api_instance.pic_v1_shipments_cancel_post(authorization, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ShipmentsServicesApi->pic_v1_shipments_cancel_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer token obtained from SSO | 
 **codes** | [**Codes**](Codes.md)| Collection codes to cancel | [optional] 

### Return type

[**ShipmentCancelResponse**](ShipmentCancelResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/json;charset=UTF-8



# **pic_v1_shipments_deletepack_put**
> ShipmentAddPackResponse pic_v1_shipments_deletepack_put(authorization, opts)

Delete parcel from shipment

Delete parcel from shipment

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ShipmentsServicesApi.new

authorization = 'authorization_example' # String | Bearer token obtained from SSO

opts = { 
  input: SwaggerClient::DeletePack.new # DeletePack | Parcel to delete. In case shipmentCode is present it will ignore ccc, fracnhise, date and reference.
}

begin
  #Delete parcel from shipment
  result = api_instance.pic_v1_shipments_deletepack_put(authorization, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ShipmentsServicesApi->pic_v1_shipments_deletepack_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer token obtained from SSO | 
 **input** | [**DeletePack**](DeletePack.md)| Parcel to delete. In case shipmentCode is present it will ignore ccc, fracnhise, date and reference. | [optional] 

### Return type

[**ShipmentAddPackResponse**](ShipmentAddPackResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/json;charset=UTF-8



# **pic_v1_shipments_post**
> ShipmentResponse pic_v1_shipments_post(authorization, opts)

Create a new shipment

Create a new shipment

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ShipmentsServicesApi.new

authorization = 'authorization_example' # String | Bearer token obtained from SSO

opts = { 
  input: SwaggerClient::ShipmentRequestBody.new # ShipmentRequestBody | The pickup to create
}

begin
  #Create a new shipment
  result = api_instance.pic_v1_shipments_post(authorization, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ShipmentsServicesApi->pic_v1_shipments_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer token obtained from SSO | 
 **input** | [**ShipmentRequestBody**](ShipmentRequestBody.md)| The pickup to create | [optional] 

### Return type

[**ShipmentResponse**](ShipmentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/json;charset=UTF-8



# **pic_v1_shipments_update_put**
> EditResponse pic_v1_shipments_update_put(authorization, opts)

Update shipment

Update shipment

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ShipmentsServicesApi.new

authorization = 'authorization_example' # String | Bearer token obtained from SSO

opts = { 
  input: SwaggerClient::EditRequest.new # EditRequest | New data for the expedition. ShipmentCode or shipmentFilter required but only one (XOR operator).
}

begin
  #Update shipment
  result = api_instance.pic_v1_shipments_update_put(authorization, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ShipmentsServicesApi->pic_v1_shipments_update_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer token obtained from SSO | 
 **input** | [**EditRequest**](EditRequest.md)| New data for the expedition. ShipmentCode or shipmentFilter required but only one (XOR operator). | [optional] 

### Return type

[**EditResponse**](EditResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/json;charset=UTF-8



