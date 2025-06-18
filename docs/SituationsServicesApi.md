# SwaggerClient::SituationsServicesApi

All URIs are relative to *https://servicios.apipre.seur.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pic_v1_unfinished_situation_packs_post**](SituationsServicesApi.md#pic_v1_unfinished_situation_packs_post) | **POST** /pic/v1/unfinished-situation/packs | Create a new unfinished situation by pack
[**pic_v1_unfinished_situation_post**](SituationsServicesApi.md#pic_v1_unfinished_situation_post) | **POST** /pic/v1/unfinished-situation | Create a new unfinished situation


# **pic_v1_unfinished_situation_packs_post**
> UnfinishedSituationResponse pic_v1_unfinished_situation_packs_post(opts)

Create a new unfinished situation by pack

Creates a new unfinished situation request by pack

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SituationsServicesApi.new

opts = { 
  input: SwaggerClient::UnfinishedSituationRequest.new # UnfinishedSituationRequest | The situation request to Process
}

begin
  #Create a new unfinished situation by pack
  result = api_instance.pic_v1_unfinished_situation_packs_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SituationsServicesApi->pic_v1_unfinished_situation_packs_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**UnfinishedSituationRequest**](UnfinishedSituationRequest.md)| The situation request to Process | [optional] 

### Return type

[**UnfinishedSituationResponse**](UnfinishedSituationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/json;charset=UTF-8



# **pic_v1_unfinished_situation_post**
> UnfinishedSituationResponse pic_v1_unfinished_situation_post(opts)

Create a new unfinished situation

Creates a new unfinished situation request

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SituationsServicesApi.new

opts = { 
  input: SwaggerClient::UnfinishedSituationRequest.new # UnfinishedSituationRequest | The situation request to Process
}

begin
  #Create a new unfinished situation
  result = api_instance.pic_v1_unfinished_situation_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SituationsServicesApi->pic_v1_unfinished_situation_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**UnfinishedSituationRequest**](UnfinishedSituationRequest.md)| The situation request to Process | [optional] 

### Return type

[**UnfinishedSituationResponse**](UnfinishedSituationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/json;charset=UTF-8



