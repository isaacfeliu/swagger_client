# SwaggerClient::BrexitServicesApi

All URIs are relative to *https://servicios.apipre.seur.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pic_v1_brexit_invoices_post**](BrexitServicesApi.md#pic_v1_brexit_invoices_post) | **POST** /pic/v1/brexit/invoices | Invoices
[**pic_v1_brexit_tariff_item_post**](BrexitServicesApi.md#pic_v1_brexit_tariff_item_post) | **POST** /pic/v1/brexit/tariff-item | Tariff Items


# **pic_v1_brexit_invoices_post**
> InvoiceResponse pic_v1_brexit_invoices_post(authorization, file, ref, opts)

Invoices

Invoices

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BrexitServicesApi.new

authorization = 'authorization_example' # String | Bearer token obtained from SSO

file = File.new('/path/to/file.txt') # File | Invoice to save.

ref = 'ref_example' # String | Reference code. Example: 866075/4SHZQ6YLMEJ7BF

opts = { 
  business_unit: 56, # Integer | Business Unit code: Example: 80
  account_number: 56, # Integer | Account Number. Example: 20855
  sandbox: false # BOOLEAN | enables sandbox mode
}

begin
  #Invoices
  result = api_instance.pic_v1_brexit_invoices_post(authorization, file, ref, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BrexitServicesApi->pic_v1_brexit_invoices_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer token obtained from SSO | 
 **file** | **File**| Invoice to save. | 
 **ref** | **String**| Reference code. Example: 866075/4SHZQ6YLMEJ7BF | 
 **business_unit** | **Integer**| Business Unit code: Example: 80 | [optional] 
 **account_number** | **Integer**| Account Number. Example: 20855 | [optional] 
 **sandbox** | **BOOLEAN**| enables sandbox mode | [optional] [default to false]

### Return type

[**InvoiceResponse**](InvoiceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json;charset=UTF-8



# **pic_v1_brexit_tariff_item_post**
> TariffItemResponse pic_v1_brexit_tariff_item_post(authorization, input)

Tariff Items

Tariff Items

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BrexitServicesApi.new

authorization = 'authorization_example' # String | Bearer token obtained from SSO

input = SwaggerClient::TariffItemRequestBody.new # TariffItemRequestBody | Tariff Item


begin
  #Tariff Items
  result = api_instance.pic_v1_brexit_tariff_item_post(authorization, input)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BrexitServicesApi->pic_v1_brexit_tariff_item_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer token obtained from SSO | 
 **input** | [**TariffItemRequestBody**](TariffItemRequestBody.md)| Tariff Item | 

### Return type

[**TariffItemResponse**](TariffItemResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/json;charset=UTF-8



