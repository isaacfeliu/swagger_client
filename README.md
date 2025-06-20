# swagger_client

SwaggerClient - the Ruby gem for the SEUR Public API

<b>INFORMATION ABOUT THE API</b>  <b>AUTH</b>  All requests must be accompanied by an authentication header with a 'Bearer ' obtained through the SSO token URL:  https://servicios.apipre.seur.io/pic_token  <i>Simple cURL Example</i>  curl -X POST --data-urlencode \"grant_type=client_credentials\" --data-urlencode \"client_id=<>\" --data-urlencode \"client_secret=<>\" https://servicios.apipre.seur.io/pic_token

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 1.0
- Package version: 1.0.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build swagger_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./swagger_client-1.0.0.gem
```
(for development, run `gem install --dev ./swagger_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'swagger_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/YOUR_GIT_USERNAME/YOUR_GIT_REPO, then add the following in the Gemfile:

    gem 'swagger_client', :git => 'https://github.com/YOUR_GIT_USERNAME/YOUR_GIT_REPO.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
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

## Documentation for API Endpoints

All URIs are relative to *https://servicios.apipre.seur.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SwaggerClient::BrexitServicesApi* | [**pic_v1_brexit_invoices_post**](docs/BrexitServicesApi.md#pic_v1_brexit_invoices_post) | **POST** /pic/v1/brexit/invoices | Invoices
*SwaggerClient::BrexitServicesApi* | [**pic_v1_brexit_tariff_item_post**](docs/BrexitServicesApi.md#pic_v1_brexit_tariff_item_post) | **POST** /pic/v1/brexit/tariff-item | Tariff Items
*SwaggerClient::CitiesServicesApi* | [**pic_v1_cities_get**](docs/CitiesServicesApi.md#pic_v1_cities_get) | **GET** /pic/v1/cities | Filter cities
*SwaggerClient::CollectionsServicesApi* | [**pic_v1_collections_cancel_post**](docs/CollectionsServicesApi.md#pic_v1_collections_cancel_post) | **POST** /pic/v1/collections/cancel | Cancel existing collection
*SwaggerClient::CollectionsServicesApi* | [**pic_v1_collections_post**](docs/CollectionsServicesApi.md#pic_v1_collections_post) | **POST** /pic/v1/collections | Create a new collection
*SwaggerClient::CollectionsServicesApi* | [**pic_v1_collections_time_slots_get**](docs/CollectionsServicesApi.md#pic_v1_collections_time_slots_get) | **GET** /pic/v1/collections/time-slots | Get time-slot from collection
*SwaggerClient::CustomsServicesApi* | [**pic_v1_customs_get**](docs/CustomsServicesApi.md#pic_v1_customs_get) | **GET** /pic/v1/customs | Customs services
*SwaggerClient::DeliveryManifestServicesApi* | [**pic_v1_shipments_delivery_manifest_get**](docs/DeliveryManifestServicesApi.md#pic_v1_shipments_delivery_manifest_get) | **GET** /pic/v1/shipments/delivery-manifest | Manifest generation
*SwaggerClient::EcbsAndParcelNumbersServicesApi* | [**pic_v1_ecbs_pn_post**](docs/EcbsAndParcelNumbersServicesApi.md#pic_v1_ecbs_pn_post) | **POST** /pic/v1/ecbs-pn | Filter ECBs and parcel numbers
*SwaggerClient::InflightOptionsApi* | [**pic_v1_inflight_options_get**](docs/InflightOptionsApi.md#pic_v1_inflight_options_get) | **GET** /pic/v1/inflight-options | Inflight Options
*SwaggerClient::InternationalServicesApi* | [**pic_v1_output_platform_get**](docs/InternationalServicesApi.md#pic_v1_output_platform_get) | **GET** /pic/v1/output-platform | Get output platform
*SwaggerClient::InternationalServicesApi* | [**pic_v1_routing_oz_post**](docs/InternationalServicesApi.md#pic_v1_routing_oz_post) | **POST** /pic/v1/routing-oz | Calculate routing Operative Zones
*SwaggerClient::LabelsServicesApi* | [**pic_v1_labels_get**](docs/LabelsServicesApi.md#pic_v1_labels_get) | **GET** /pic/v1/labels | Labels expedition label
*SwaggerClient::LeadTimeServicesApi* | [**pic_v1_zip_to_zipcodes_post**](docs/LeadTimeServicesApi.md#pic_v1_zip_to_zipcodes_post) | **POST** /pic/v1/zip-to-zipcodes | Lead time between two postal codes
*SwaggerClient::LiveTrackingApi* | [**pic_v1_livetracking_get**](docs/LiveTrackingApi.md#pic_v1_livetracking_get) | **GET** /pic/v1/livetracking | Get Live tracking from request
*SwaggerClient::PickupCentresServicesApi* | [**pic_v1_pickups_get**](docs/PickupCentresServicesApi.md#pic_v1_pickups_get) | **GET** /pic/v1/pickups | Filter centres
*SwaggerClient::PodServicesApi* | [**pic_v1_pods_get**](docs/PodServicesApi.md#pic_v1_pods_get) | **GET** /pic/v1/pods | Get pods
*SwaggerClient::ShipMethodsApi* | [**pic_v1_ship_methods_get**](docs/ShipMethodsApi.md#pic_v1_ship_methods_get) | **GET** /pic/v1/ship-methods | Get product and service pair
*SwaggerClient::ShipmentsServicesApi* | [**pic_v1_shipments_addpack_put**](docs/ShipmentsServicesApi.md#pic_v1_shipments_addpack_put) | **PUT** /pic/v1/shipments/addpack | Add parcel to shipment
*SwaggerClient::ShipmentsServicesApi* | [**pic_v1_shipments_cancel_post**](docs/ShipmentsServicesApi.md#pic_v1_shipments_cancel_post) | **POST** /pic/v1/shipments/cancel | Cancel existing shipment
*SwaggerClient::ShipmentsServicesApi* | [**pic_v1_shipments_deletepack_put**](docs/ShipmentsServicesApi.md#pic_v1_shipments_deletepack_put) | **PUT** /pic/v1/shipments/deletepack | Delete parcel from shipment
*SwaggerClient::ShipmentsServicesApi* | [**pic_v1_shipments_post**](docs/ShipmentsServicesApi.md#pic_v1_shipments_post) | **POST** /pic/v1/shipments | Create a new shipment
*SwaggerClient::ShipmentsServicesApi* | [**pic_v1_shipments_update_put**](docs/ShipmentsServicesApi.md#pic_v1_shipments_update_put) | **PUT** /pic/v1/shipments/update | Update shipment
*SwaggerClient::SituationsServicesApi* | [**pic_v1_unfinished_situation_packs_post**](docs/SituationsServicesApi.md#pic_v1_unfinished_situation_packs_post) | **POST** /pic/v1/unfinished-situation/packs | Create a new unfinished situation by pack
*SwaggerClient::SituationsServicesApi* | [**pic_v1_unfinished_situation_post**](docs/SituationsServicesApi.md#pic_v1_unfinished_situation_post) | **POST** /pic/v1/unfinished-situation | Create a new unfinished situation
*SwaggerClient::TrackingServicesApi* | [**pic_v1_tracking_services_extended_get**](docs/TrackingServicesApi.md#pic_v1_tracking_services_extended_get) | **GET** /pic/v1/tracking-services/extended | Get situations in extended format
*SwaggerClient::TrackingServicesApi* | [**pic_v1_tracking_services_simplified_get**](docs/TrackingServicesApi.md#pic_v1_tracking_services_simplified_get) | **GET** /pic/v1/tracking-services/simplified | Get situations in simplified format
*SwaggerClient::ValuateServicesApi* | [**pic_v1_valuate_post**](docs/ValuateServicesApi.md#pic_v1_valuate_post) | **POST** /pic/v1/valuate | Valuate (National and International)
*SwaggerClient::WorkingDaysApi* | [**pic_v1_next_working_day_get**](docs/WorkingDaysApi.md#pic_v1_next_working_day_get) | **GET** /pic/v1/next-working-day | Get the next available working day


## Documentation for Models

 - [SwaggerClient::ActorAddress](docs/ActorAddress.md)
 - [SwaggerClient::ActorAddressShipment](docs/ActorAddressShipment.md)
 - [SwaggerClient::ActorCustomer](docs/ActorCustomer.md)
 - [SwaggerClient::ActorReceiver](docs/ActorReceiver.md)
 - [SwaggerClient::ActorSender](docs/ActorSender.md)
 - [SwaggerClient::ActorShipment](docs/ActorShipment.md)
 - [SwaggerClient::AddPack](docs/AddPack.md)
 - [SwaggerClient::AddParcelP](docs/AddParcelP.md)
 - [SwaggerClient::CashDeliveryValueShipment](docs/CashDeliveryValueShipment.md)
 - [SwaggerClient::CentresData](docs/CentresData.md)
 - [SwaggerClient::CentresDays](docs/CentresDays.md)
 - [SwaggerClient::CentresResponse](docs/CentresResponse.md)
 - [SwaggerClient::CentresWeekDays](docs/CentresWeekDays.md)
 - [SwaggerClient::CitiesData](docs/CitiesData.md)
 - [SwaggerClient::CitiesResponse](docs/CitiesResponse.md)
 - [SwaggerClient::Codes](docs/Codes.md)
 - [SwaggerClient::Collection](docs/Collection.md)
 - [SwaggerClient::CollectionCancelData](docs/CollectionCancelData.md)
 - [SwaggerClient::CollectionCancelResponse](docs/CollectionCancelResponse.md)
 - [SwaggerClient::CollectionData](docs/CollectionData.md)
 - [SwaggerClient::CollectionRequestBody](docs/CollectionRequestBody.md)
 - [SwaggerClient::CollectionResponse](docs/CollectionResponse.md)
 - [SwaggerClient::Custom](docs/Custom.md)
 - [SwaggerClient::CustomsResponse](docs/CustomsResponse.md)
 - [SwaggerClient::DeletePack](docs/DeletePack.md)
 - [SwaggerClient::Departure](docs/Departure.md)
 - [SwaggerClient::ECBsAndParcelsRequestBody](docs/ECBsAndParcelsRequestBody.md)
 - [SwaggerClient::EcbsResponse](docs/EcbsResponse.md)
 - [SwaggerClient::EditActor](docs/EditActor.md)
 - [SwaggerClient::EditRequest](docs/EditRequest.md)
 - [SwaggerClient::EditResponse](docs/EditResponse.md)
 - [SwaggerClient::Error](docs/Error.md)
 - [SwaggerClient::ErrorResponse](docs/ErrorResponse.md)
 - [SwaggerClient::ErrorRoutingOZInput](docs/ErrorRoutingOZInput.md)
 - [SwaggerClient::ExtendedPack](docs/ExtendedPack.md)
 - [SwaggerClient::ExtendedReference](docs/ExtendedReference.md)
 - [SwaggerClient::ExtendedSituation](docs/ExtendedSituation.md)
 - [SwaggerClient::ExtendedSituationData](docs/ExtendedSituationData.md)
 - [SwaggerClient::ExtendedSituationResponse](docs/ExtendedSituationResponse.md)
 - [SwaggerClient::ExtendedSituationSituation](docs/ExtendedSituationSituation.md)
 - [SwaggerClient::GenericCreateResponseDto](docs/GenericCreateResponseDto.md)
 - [SwaggerClient::InvoiceResponse](docs/InvoiceResponse.md)
 - [SwaggerClient::LabelActor](docs/LabelActor.md)
 - [SwaggerClient::LabelsData](docs/LabelsData.md)
 - [SwaggerClient::LabelsResponse](docs/LabelsResponse.md)
 - [SwaggerClient::LiveTrackingData](docs/LiveTrackingData.md)
 - [SwaggerClient::LiveTrackingListResponseDto](docs/LiveTrackingListResponseDto.md)
 - [SwaggerClient::LiveTrackingResponse](docs/LiveTrackingResponse.md)
 - [SwaggerClient::LiveTrackingResponseDto](docs/LiveTrackingResponseDto.md)
 - [SwaggerClient::ManifestResponseDto](docs/ManifestResponseDto.md)
 - [SwaggerClient::NextWorkingDayResponse](docs/NextWorkingDayResponse.md)
 - [SwaggerClient::NextWorkingDayResponseData](docs/NextWorkingDayResponseData.md)
 - [SwaggerClient::OutputPlatformData](docs/OutputPlatformData.md)
 - [SwaggerClient::OutputPlatformRequest](docs/OutputPlatformRequest.md)
 - [SwaggerClient::OutputPlatformResponse](docs/OutputPlatformResponse.md)
 - [SwaggerClient::Parcel](docs/Parcel.md)
 - [SwaggerClient::ParcelRoutingOZInput](docs/ParcelRoutingOZInput.md)
 - [SwaggerClient::Pod](docs/Pod.md)
 - [SwaggerClient::PodData](docs/PodData.md)
 - [SwaggerClient::PodResponse](docs/PodResponse.md)
 - [SwaggerClient::Restrictions](docs/Restrictions.md)
 - [SwaggerClient::ReturnActor](docs/ReturnActor.md)
 - [SwaggerClient::RoutingOZData](docs/RoutingOZData.md)
 - [SwaggerClient::RoutingOZInput](docs/RoutingOZInput.md)
 - [SwaggerClient::RoutingOZRequestBody](docs/RoutingOZRequestBody.md)
 - [SwaggerClient::RoutingOZResponse](docs/RoutingOZResponse.md)
 - [SwaggerClient::SaveShipmentRequestDto](docs/SaveShipmentRequestDto.md)
 - [SwaggerClient::ServiceProductData](docs/ServiceProductData.md)
 - [SwaggerClient::ServiceProductResponse](docs/ServiceProductResponse.md)
 - [SwaggerClient::ShipmentAddPackResponse](docs/ShipmentAddPackResponse.md)
 - [SwaggerClient::ShipmentCancelData](docs/ShipmentCancelData.md)
 - [SwaggerClient::ShipmentCancelResponse](docs/ShipmentCancelResponse.md)
 - [SwaggerClient::ShipmentData](docs/ShipmentData.md)
 - [SwaggerClient::ShipmentRequestBody](docs/ShipmentRequestBody.md)
 - [SwaggerClient::ShipmentResponse](docs/ShipmentResponse.md)
 - [SwaggerClient::SimplifiedSituation](docs/SimplifiedSituation.md)
 - [SwaggerClient::SimplifiedSituationData](docs/SimplifiedSituationData.md)
 - [SwaggerClient::SimplifiedSituationRefs](docs/SimplifiedSituationRefs.md)
 - [SwaggerClient::SimplifiedSituationResponse](docs/SimplifiedSituationResponse.md)
 - [SwaggerClient::Synomym](docs/Synomym.md)
 - [SwaggerClient::TariffItemRequestBody](docs/TariffItemRequestBody.md)
 - [SwaggerClient::TariffItemResponse](docs/TariffItemResponse.md)
 - [SwaggerClient::TimeSlotData](docs/TimeSlotData.md)
 - [SwaggerClient::TimeSlotResponse](docs/TimeSlotResponse.md)
 - [SwaggerClient::UnfinishedSituationRequest](docs/UnfinishedSituationRequest.md)
 - [SwaggerClient::UnfinishedSituationRequestInner](docs/UnfinishedSituationRequestInner.md)
 - [SwaggerClient::UnfinishedSituationRequestInnerToken](docs/UnfinishedSituationRequestInnerToken.md)
 - [SwaggerClient::UnfinishedSituationResponse](docs/UnfinishedSituationResponse.md)
 - [SwaggerClient::ValuateRequest](docs/ValuateRequest.md)
 - [SwaggerClient::ValuateRequestBody](docs/ValuateRequestBody.md)
 - [SwaggerClient::ValuateResponse](docs/ValuateResponse.md)
 - [SwaggerClient::ValuateResponseBody](docs/ValuateResponseBody.md)
 - [SwaggerClient::ValueShipment](docs/ValueShipment.md)
 - [SwaggerClient::ZipToZipcodesData](docs/ZipToZipcodesData.md)
 - [SwaggerClient::ZipToZipcodesRequest](docs/ZipToZipcodesRequest.md)
 - [SwaggerClient::ZipToZipcodesResponse](docs/ZipToZipcodesResponse.md)


## Documentation for Authorization

 All endpoints do not require authorization.

