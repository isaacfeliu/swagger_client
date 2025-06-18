# SwaggerClient::LabelsServicesApi

All URIs are relative to *https://servicios.apipre.seur.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pic_v1_labels_get**](LabelsServicesApi.md#pic_v1_labels_get) | **GET** /pic/v1/labels | Labels expedition label


# **pic_v1_labels_get**
> LabelsResponse pic_v1_labels_get(authorization, code, type, entity, opts)

Labels expedition label

Labels expedition label

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::LabelsServicesApi.new

authorization = 'authorization_example' # String | Bearer token obtained from SSO

code = ['code_example'] # Array<String> | Code. Example: 0000000000000001

type = 'type_example' # String | Label type. Example: ZPL | PDF | A4_3

entity = 'entity_example' # String | Entity type. Example: EXPEDITIONS | SHIPMENTS | COLLECTIONS

opts = { 
  template_type: 'template_type_example', # String | Template type. Example: NORMAL | CUSTOM_REFERENCE | Z4_ONE_BODY | Z4_TWO_BODIES | GEOLABEL | C2C
  packs: ['packs_example'], # Array<String> | List of specific ecb numbers that belongs to the informed code
  output_type: 'output_type_example', # String | Label output type, by default is LABEL. Example: LABEL | LINK | LABEL_AND_LINK
  qr: true, # BOOLEAN | Specify whether QR code is required
  qr_ref: true, # BOOLEAN | Specify whether QR reference is required
  start_parcel: 56, # Integer | In case of TWO_BODIES-A4_3 label specify the start pack label, by default is 1 (The first label)
  end_parcel: 56, # Integer | In case of TWO_BODIES-A4_3 label specify the end pack label, by default is 0 (0 means that you get have no limit)
  position: 56 # Integer | Vales [1-2-3]. In case of TWO_BODIES-A4_3 specifiy the position of the first label start on first page, by default is 1
}

begin
  #Labels expedition label
  result = api_instance.pic_v1_labels_get(authorization, code, type, entity, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LabelsServicesApi->pic_v1_labels_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer token obtained from SSO | 
 **code** | [**Array&lt;String&gt;**](String.md)| Code. Example: 0000000000000001 | 
 **type** | **String**| Label type. Example: ZPL | PDF | A4_3 | 
 **entity** | **String**| Entity type. Example: EXPEDITIONS | SHIPMENTS | COLLECTIONS | 
 **template_type** | **String**| Template type. Example: NORMAL | CUSTOM_REFERENCE | Z4_ONE_BODY | Z4_TWO_BODIES | GEOLABEL | C2C | [optional] 
 **packs** | [**Array&lt;String&gt;**](String.md)| List of specific ecb numbers that belongs to the informed code | [optional] 
 **output_type** | **String**| Label output type, by default is LABEL. Example: LABEL | LINK | LABEL_AND_LINK | [optional] 
 **qr** | **BOOLEAN**| Specify whether QR code is required | [optional] 
 **qr_ref** | **BOOLEAN**| Specify whether QR reference is required | [optional] 
 **start_parcel** | **Integer**| In case of TWO_BODIES-A4_3 label specify the start pack label, by default is 1 (The first label) | [optional] 
 **end_parcel** | **Integer**| In case of TWO_BODIES-A4_3 label specify the end pack label, by default is 0 (0 means that you get have no limit) | [optional] 
 **position** | **Integer**| Vales [1-2-3]. In case of TWO_BODIES-A4_3 specifiy the position of the first label start on first page, by default is 1 | [optional] 

### Return type

[**LabelsResponse**](LabelsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/json;charset=UTF-8



