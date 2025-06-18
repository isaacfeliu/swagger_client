# SwaggerClient::SaveShipmentRequestDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_code** | **Integer** |  | 
**product_code** | **Integer** |  | 
**customs_goods_code** | **String** | The customs goods must be C, D, N or S | [optional] 
**payment_type** | **String** | Values: P or D | [optional] 
**pod** | **String** | Values: I or S | [optional] 
**taric** | **Float** |  | [optional] 
**inco_terms** | **String** | Values: [\&quot;DAP\&quot;, \&quot;DDP\&quot;] | [optional] 
**security** | **BOOLEAN** |  | [optional] 
**et** | **BOOLEAN** |  | [optional] 
**eci** | **BOOLEAN** |  | [optional] 
**swap** | **BOOLEAN** |  | [optional] 
**d_sat** | **BOOLEAN** |  | [optional] 
**date** | **DateTime** |  | [optional] 
**ref** | **String** |  | 
**second_reference** | **String** |  | [optional] 
**agent_reference** | **String** |  | [optional] 
**ecb_ret** | **String** |  | [optional] 
**ecb_cli** | **String** |  | [optional] 
**observations** | **String** |  | [optional] 
**declared_value** | **Float** |  | 
**insured_value** | **Float** |  | 
**export_payment_type** | **String** | Values: [\&quot;P\&quot;, \&quot;D\&quot;] | [optional] 
**import_payment_type** | **String** | Values: [\&quot;P\&quot;, \&quot;D\&quot;] | [optional] 
**sender** | [**ActorShipment**](ActorShipment.md) |  | 
**receiver** | [**ActorReceiver**](ActorReceiver.md) |  | 
**collection_date** | **DateTime** |  | 
**label** | **BOOLEAN** |  | [optional] 
**payer** | **String** |  | 
**customer** | [**ActorCustomer**](ActorCustomer.md) |  | 
**parcels** | [**Array&lt;Parcel&gt;**](Parcel.md) |  | 
**cash_on_delivery_value** | **Float** |  | 
**restrictions** | [**Array&lt;Restrictions&gt;**](Restrictions.md) |  | [optional] 
**packages_number** | **Integer** |  | [optional] 


