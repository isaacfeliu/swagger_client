# SwaggerClient::CollectionRequestBody

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_code** | **Integer** |  | 
**product_code** | **Integer** |  | 
**int_service_code** | **Integer** |  | [optional] 
**int_product_code** | **Integer** |  | [optional] 
**inco_terms** | **String** | Values: [\&quot;DAP\&quot;, \&quot;DDP\&quot;] | [optional] 
**created** | **Integer** |  | [optional] 
**taric** | **Float** |  | [optional] 
**customs_goods_code** | **String** | The customs goods must be C, D, N or S | [optional] 
**ref** | **String** |  | 
**collection_date** | **DateTime** |  | 
**label** | **BOOLEAN** |  | [optional] 
**payer** | **String** |  | 
**customer** | [**ActorCustomer**](ActorCustomer.md) |  | 
**sender** | [**ActorSender**](ActorSender.md) |  | 
**receiver** | [**ActorReceiver**](ActorReceiver.md) |  | 
**return_actor** | [**ReturnActor**](ReturnActor.md) |  | [optional] 
**parcels** | [**Array&lt;Parcel&gt;**](Parcel.md) |  | 
**declared_value** | **Float** |  | 
**insured_value** | **Float** |  | 
**cash_on_delivery_value** | **Float** |  | 
**observations** | **String** |  | [optional] 
**restrictions** | [**Array&lt;Restrictions&gt;**](Restrictions.md) |  | [optional] 
**driver_location** | **BOOLEAN** |  | [optional] 
**packages_number** | **Integer** |  | [optional] 
**security** | **String** | Values S|N | [optional] 
**d_sat** | **String** | Values S|N | [optional] 


