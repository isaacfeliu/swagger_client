# SwaggerClient::ShipmentRequestBody

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_code** | **Integer** |  | 
**product_code** | **Integer** |  | 
**customs_goods_code** | **String** | Values: [\&quot;C\&quot;, \&quot;D\&quot;, \&quot;N\&quot;, \&quot;S\&quot;, \&quot;P\&quot;] | [optional] 
**payment_type** | **String** | Values: [\&quot;D\&quot;, \&quot;P\&quot;] | [optional] 
**pod** | **String** | Values: [\&quot;I\&quot;, \&quot;S\&quot;] | [optional] 
**taric** | **Float** |  | [optional] 
**inco_terms** | **String** | Values: [\&quot;DAP\&quot;, \&quot;DDP\&quot;] | [optional] 
**security** | **BOOLEAN** |  | [optional] 
**et** | **BOOLEAN** |  | [optional] 
**eci** | **BOOLEAN** |  | [optional] 
**swap** | **BOOLEAN** |  | [optional] 
**d_sat** | **BOOLEAN** |  | [optional] 
**customer** | [**ActorCustomer**](ActorCustomer.md) |  | [optional] 
**sender** | [**ActorSender**](ActorSender.md) |  | 
**receiver** | [**ActorReceiver**](ActorReceiver.md) |  | 
**label_actor** | [**LabelActor**](LabelActor.md) |  | [optional] 
**date** | **DateTime** |  | [optional] 
**ref** | **String** |  | 
**second_reference** | **String** |  | [optional] 
**agent_reference** | **String** |  | [optional] 
**ecb_ret** | **String** |  | [optional] 
**ecb_cli** | **String** |  | [optional] 
**observations** | **String** |  | [optional] 
**parcels** | [**Array&lt;Parcel&gt;**](Parcel.md) |  | 
**declared_value** | [**ValueShipment**](ValueShipment.md) |  | [optional] 
**insured_value** | [**ValueShipment**](ValueShipment.md) |  | [optional] 
**cash_on_delivery_value** | [**CashDeliveryValueShipment**](CashDeliveryValueShipment.md) |  | [optional] 
**export_payment_type** | **String** | Values: [\&quot;D\&quot;, \&quot;P\&quot;] | [optional] 
**import_payment_type** | **String** | Values: [\&quot;D\&quot;, \&quot;P\&quot;] | [optional] 
**ecommerce_name** | **String** |  | [optional] 
**ecommerce** | **BOOLEAN** |  | [optional] 


