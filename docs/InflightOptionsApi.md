# SwaggerClient::InflightOptionsApi

All URIs are relative to *https://servicios.apipre.seur.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pic_v1_inflight_options_get**](InflightOptionsApi.md#pic_v1_inflight_options_get) | **GET** /pic/v1/inflight-options | Inflight Options


# **pic_v1_inflight_options_get**
> GenericCreateResponseDto pic_v1_inflight_options_get(authorization, observations, solution_type, opts)

Inflight Options

Create a solution for a specific Solution Type from the provided values

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InflightOptionsApi.new

authorization = 'authorization_example' # String | Bearer token obtained from SSO

observations = 'observations_example' # String | Observations

solution_type = 'solution_type_example' # String | Solution Type

opts = { 
  expedition_code: 'expedition_code_example', # String | Expedition code
  ref: 'ref_example', # String | Reference
  id_number: 'id_number_example', # String | Id Number
  date: 'date_example', # String | Date on format: 'yyyy-MM-dd'
  center_code: 56, # Integer | Center code
  country_iso_code: 'country_iso_code_example', # String | Country ISO Code
  city_name: 'city_name_example', # String | City Name
  street_type_code: 'street_type_code_example', # String | Street Type Code
  street_name: 'street_name_example', # String | Street Name
  postal_code: 'postal_code_example', # String | Postal Code
  city_code: 56, # Integer | City Code
  street_number_type_code: 'street_number_type_code_example', # String | Street Type Code
  street_number: 'street_number_example', # String | Street Number
  block: 'block_example', # String | block
  floor: 'floor_example', # String | floor
  stairs: 'stairs_example', # String | stairs
  door: 'door_example', # String | door
  phone: 'phone_example', # String | phone
  name: 'name_example', # String | name
  notification_mail: 'notification_mail_example', # String | Notificacion Mail
  client_franchise: 56, # Integer | Client Franchise
  contact_person: 'contact_person_example', # String | Contact Person
  nif: 'nif_example', # String | nif
  sandbox: false # BOOLEAN | sandbox
}

begin
  #Inflight Options
  result = api_instance.pic_v1_inflight_options_get(authorization, observations, solution_type, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InflightOptionsApi->pic_v1_inflight_options_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer token obtained from SSO | 
 **observations** | **String**| Observations | 
 **solution_type** | **String**| Solution Type | 
 **expedition_code** | **String**| Expedition code | [optional] 
 **ref** | **String**| Reference | [optional] 
 **id_number** | **String**| Id Number | [optional] 
 **date** | **String**| Date on format: &#39;yyyy-MM-dd&#39; | [optional] 
 **center_code** | **Integer**| Center code | [optional] 
 **country_iso_code** | **String**| Country ISO Code | [optional] 
 **city_name** | **String**| City Name | [optional] 
 **street_type_code** | **String**| Street Type Code | [optional] 
 **street_name** | **String**| Street Name | [optional] 
 **postal_code** | **String**| Postal Code | [optional] 
 **city_code** | **Integer**| City Code | [optional] 
 **street_number_type_code** | **String**| Street Type Code | [optional] 
 **street_number** | **String**| Street Number | [optional] 
 **block** | **String**| block | [optional] 
 **floor** | **String**| floor | [optional] 
 **stairs** | **String**| stairs | [optional] 
 **door** | **String**| door | [optional] 
 **phone** | **String**| phone | [optional] 
 **name** | **String**| name | [optional] 
 **notification_mail** | **String**| Notificacion Mail | [optional] 
 **client_franchise** | **Integer**| Client Franchise | [optional] 
 **contact_person** | **String**| Contact Person | [optional] 
 **nif** | **String**| nif | [optional] 
 **sandbox** | **BOOLEAN**| sandbox | [optional] [default to false]

### Return type

[**GenericCreateResponseDto**](GenericCreateResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8



