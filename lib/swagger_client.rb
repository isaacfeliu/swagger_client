=begin
#SEUR Public API

#<b>INFORMATION ABOUT THE API</b>  <b>AUTH</b>  All requests must be accompanied by an authentication header with a 'Bearer ' obtained through the SSO token URL:  https://servicios.apipre.seur.io/pic_token  <i>Simple cURL Example</i>  curl -X POST --data-urlencode \"grant_type=client_credentials\" --data-urlencode \"client_id=<>\" --data-urlencode \"client_secret=<>\" https://servicios.apipre.seur.io/pic_token

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.39

=end

# Common files
require 'swagger_client/api_client'
require 'swagger_client/api_error'
require 'swagger_client/version'
require 'swagger_client/configuration'

# Models
require 'swagger_client/models/actor_address'
require 'swagger_client/models/actor_address_shipment'
require 'swagger_client/models/actor_customer'
require 'swagger_client/models/actor_receiver'
require 'swagger_client/models/actor_sender'
require 'swagger_client/models/actor_shipment'
require 'swagger_client/models/add_pack'
require 'swagger_client/models/add_parcel_p'
require 'swagger_client/models/cash_delivery_value_shipment'
require 'swagger_client/models/centres_data'
require 'swagger_client/models/centres_days'
require 'swagger_client/models/centres_response'
require 'swagger_client/models/centres_week_days'
require 'swagger_client/models/cities_data'
require 'swagger_client/models/cities_response'
require 'swagger_client/models/codes'
require 'swagger_client/models/collection'
require 'swagger_client/models/collection_cancel_data'
require 'swagger_client/models/collection_cancel_response'
require 'swagger_client/models/collection_data'
require 'swagger_client/models/collection_request_body'
require 'swagger_client/models/collection_response'
require 'swagger_client/models/custom'
require 'swagger_client/models/customs_response'
require 'swagger_client/models/delete_pack'
require 'swagger_client/models/departure'
require 'swagger_client/models/ecbs_and_parcels_request_body'
require 'swagger_client/models/ecbs_response'
require 'swagger_client/models/edit_actor'
require 'swagger_client/models/edit_request'
require 'swagger_client/models/edit_response'
require 'swagger_client/models/error'
require 'swagger_client/models/error_response'
require 'swagger_client/models/error_routing_oz_input'
require 'swagger_client/models/extended_pack'
require 'swagger_client/models/extended_reference'
require 'swagger_client/models/extended_situation'
require 'swagger_client/models/extended_situation_data'
require 'swagger_client/models/extended_situation_response'
require 'swagger_client/models/extended_situation_situation'
require 'swagger_client/models/generic_create_response_dto'
require 'swagger_client/models/invoice_response'
require 'swagger_client/models/label_actor'
require 'swagger_client/models/labels_data'
require 'swagger_client/models/labels_response'
require 'swagger_client/models/live_tracking_data'
require 'swagger_client/models/live_tracking_list_response_dto'
require 'swagger_client/models/live_tracking_response'
require 'swagger_client/models/live_tracking_response_dto'
require 'swagger_client/models/manifest_response_dto'
require 'swagger_client/models/next_working_day_response'
require 'swagger_client/models/next_working_day_response_data'
require 'swagger_client/models/output_platform_data'
require 'swagger_client/models/output_platform_request'
require 'swagger_client/models/output_platform_response'
require 'swagger_client/models/parcel'
require 'swagger_client/models/parcel_routing_oz_input'
require 'swagger_client/models/pod'
require 'swagger_client/models/pod_data'
require 'swagger_client/models/pod_response'
require 'swagger_client/models/restrictions'
require 'swagger_client/models/return_actor'
require 'swagger_client/models/routing_oz_data'
require 'swagger_client/models/routing_oz_input'
require 'swagger_client/models/routing_oz_request_body'
require 'swagger_client/models/routing_oz_response'
require 'swagger_client/models/save_shipment_request_dto'
require 'swagger_client/models/service_product_data'
require 'swagger_client/models/service_product_response'
require 'swagger_client/models/shipment_add_pack_response'
require 'swagger_client/models/shipment_cancel_data'
require 'swagger_client/models/shipment_cancel_response'
require 'swagger_client/models/shipment_data'
require 'swagger_client/models/shipment_request_body'
require 'swagger_client/models/shipment_response'
require 'swagger_client/models/simplified_situation'
require 'swagger_client/models/simplified_situation_data'
require 'swagger_client/models/simplified_situation_refs'
require 'swagger_client/models/simplified_situation_response'
require 'swagger_client/models/synomym'
require 'swagger_client/models/tariff_item_request_body'
require 'swagger_client/models/tariff_item_response'
require 'swagger_client/models/time_slot_data'
require 'swagger_client/models/time_slot_response'
require 'swagger_client/models/unfinished_situation_request'
require 'swagger_client/models/unfinished_situation_request_inner'
require 'swagger_client/models/unfinished_situation_request_inner_token'
require 'swagger_client/models/unfinished_situation_response'
require 'swagger_client/models/valuate_request'
require 'swagger_client/models/valuate_request_body'
require 'swagger_client/models/valuate_response'
require 'swagger_client/models/valuate_response_body'
require 'swagger_client/models/value_shipment'
require 'swagger_client/models/zip_to_zipcodes_data'
require 'swagger_client/models/zip_to_zipcodes_request'
require 'swagger_client/models/zip_to_zipcodes_response'

# APIs
require 'swagger_client/api/brexit_services_api'
require 'swagger_client/api/cities_services_api'
require 'swagger_client/api/collections_services_api'
require 'swagger_client/api/customs_services_api'
require 'swagger_client/api/delivery_manifest_services_api'
require 'swagger_client/api/ecbs_and_parcel_numbers_services_api'
require 'swagger_client/api/inflight_options_api'
require 'swagger_client/api/international_services_api'
require 'swagger_client/api/labels_services_api'
require 'swagger_client/api/lead_time_services_api'
require 'swagger_client/api/live_tracking_api'
require 'swagger_client/api/pickup_centres_services_api'
require 'swagger_client/api/pod_services_api'
require 'swagger_client/api/ship_methods_api'
require 'swagger_client/api/shipments_services_api'
require 'swagger_client/api/situations_services_api'
require 'swagger_client/api/tracking_services_api'
require 'swagger_client/api/valuate_services_api'
require 'swagger_client/api/working_days_api'

module SwaggerClient
  class << self
    # Customize default settings for the SDK using block.
    #   SwaggerClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
