# SwaggerClient::DeliveryManifestServicesApi

All URIs are relative to *https://servicios.apipre.seur.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pic_v1_shipments_delivery_manifest_get**](DeliveryManifestServicesApi.md#pic_v1_shipments_delivery_manifest_get) | **GET** /pic/v1/shipments/delivery-manifest | Manifest generation


# **pic_v1_shipments_delivery_manifest_get**
> ManifestResponseDto pic_v1_shipments_delivery_manifest_get(authorization, nif, opts)

Manifest generation

Manifest generation

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DeliveryManifestServicesApi.new

authorization = 'authorization_example' # String | Bearer token obtained from SSO

nif = 'nif_example' # String | NIF. Example: B03260684

opts = { 
  ccc: 'ccc_example', # String | Cost Center. Example: 20855
  franchise: 'franchise_example', # String | Business Unit code: Example: 80
  date_from: 'date_from_example', # String | Start date to search shipments: Example: 2020-05-07T15:15:30Z
  date_to: 'date_to_example' # String | End date to search shipments: Example: 2020-05-07T15:15:30Z
}

begin
  #Manifest generation
  result = api_instance.pic_v1_shipments_delivery_manifest_get(authorization, nif, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DeliveryManifestServicesApi->pic_v1_shipments_delivery_manifest_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer token obtained from SSO | 
 **nif** | **String**| NIF. Example: B03260684 | 
 **ccc** | **String**| Cost Center. Example: 20855 | [optional] 
 **franchise** | **String**| Business Unit code: Example: 80 | [optional] 
 **date_from** | **String**| Start date to search shipments: Example: 2020-05-07T15:15:30Z | [optional] 
 **date_to** | **String**| End date to search shipments: Example: 2020-05-07T15:15:30Z | [optional] 

### Return type

[**ManifestResponseDto**](ManifestResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8



