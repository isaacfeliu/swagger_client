=begin
#SEUR Public API

#<b>INFORMATION ABOUT THE API</b>  <b>AUTH</b>  All requests must be accompanied by an authentication header with a 'Bearer ' obtained through the SSO token URL:  https://servicios.apipre.seur.io/pic_token  <i>Simple cURL Example</i>  curl -X POST --data-urlencode \"grant_type=client_credentials\" --data-urlencode \"client_id=<>\" --data-urlencode \"client_secret=<>\" https://servicios.apipre.seur.io/pic_token

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.39

=end

require 'uri'

module SwaggerClient
  class TrackingServicesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get situations in extended format
    # Filter situations by reference, idNumber or ccc
    # @param authorization Bearer token obtained from SSO
    # @param id_number Id Number code. Example: B03260684
    # @param ref Reference code. Example: 866075/4SHZQ6YLMEJ7BF
    # @param ref_type Reference type. Example: REFERENCE | ECB | PARCEL_NUMBER | SECOND_REFERENCE | PACK_REFERENCE
    # @param [Hash] opts the optional parameters
    # @option opts [String] :account_number Account Number. Example: 20855
    # @option opts [String] :business_unit Business Unit code: Example: 80
    # @option opts [BOOLEAN] :sandbox run executions en mode sandbox Example: false (default to false)
    # @return [ExtendedSituationResponse]
    def pic_v1_tracking_services_extended_get(authorization, id_number, ref, ref_type, opts = {})
      data, _status_code, _headers = pic_v1_tracking_services_extended_get_with_http_info(authorization, id_number, ref, ref_type, opts)
      data
    end

    # Get situations in extended format
    # Filter situations by reference, idNumber or ccc
    # @param authorization Bearer token obtained from SSO
    # @param id_number Id Number code. Example: B03260684
    # @param ref Reference code. Example: 866075/4SHZQ6YLMEJ7BF
    # @param ref_type Reference type. Example: REFERENCE | ECB | PARCEL_NUMBER | SECOND_REFERENCE | PACK_REFERENCE
    # @param [Hash] opts the optional parameters
    # @option opts [String] :account_number Account Number. Example: 20855
    # @option opts [String] :business_unit Business Unit code: Example: 80
    # @option opts [BOOLEAN] :sandbox run executions en mode sandbox Example: false
    # @return [Array<(ExtendedSituationResponse, Fixnum, Hash)>] ExtendedSituationResponse data, response status code and response headers
    def pic_v1_tracking_services_extended_get_with_http_info(authorization, id_number, ref, ref_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrackingServicesApi.pic_v1_tracking_services_extended_get ...'
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling TrackingServicesApi.pic_v1_tracking_services_extended_get"
      end
      # verify the required parameter 'id_number' is set
      if @api_client.config.client_side_validation && id_number.nil?
        fail ArgumentError, "Missing the required parameter 'id_number' when calling TrackingServicesApi.pic_v1_tracking_services_extended_get"
      end
      # verify the required parameter 'ref' is set
      if @api_client.config.client_side_validation && ref.nil?
        fail ArgumentError, "Missing the required parameter 'ref' when calling TrackingServicesApi.pic_v1_tracking_services_extended_get"
      end
      # verify the required parameter 'ref_type' is set
      if @api_client.config.client_side_validation && ref_type.nil?
        fail ArgumentError, "Missing the required parameter 'ref_type' when calling TrackingServicesApi.pic_v1_tracking_services_extended_get"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['REFERENCE', 'ECB', 'PARCEL_NUMBER', 'SECOND_REFERENCE', 'PACK_REFERENCE'].include?(ref_type)
        fail ArgumentError, "invalid value for 'ref_type', must be one of REFERENCE, ECB, PARCEL_NUMBER, SECOND_REFERENCE, PACK_REFERENCE"
      end
      # resource path
      local_var_path = '/pic/v1/tracking-services/extended'

      # query parameters
      query_params = {}
      query_params[:'idNumber'] = id_number
      query_params[:'ref'] = ref
      query_params[:'refType'] = ref_type
      query_params[:'accountNumber'] = opts[:'account_number'] if !opts[:'account_number'].nil?
      query_params[:'businessUnit'] = opts[:'business_unit'] if !opts[:'business_unit'].nil?
      query_params[:'sandbox'] = opts[:'sandbox'] if !opts[:'sandbox'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=UTF-8'])
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ExtendedSituationResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrackingServicesApi#pic_v1_tracking_services_extended_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get situations in simplified format
    # Filter situations by reference, idNumber or ccc
    # @param authorization Bearer token obtained from SSO
    # @param id_number Id Number code. Example: B03260684
    # @param ref Reference code. Example: 866075/4SHZQ6YLMEJ7BF
    # @param ref_type Reference type. Example: REFERENCE | ECB | PARCEL_NUMBER | SECOND_REFERENCE | PACK_REFERENCE
    # @param [Hash] opts the optional parameters
    # @option opts [String] :account_number Account Number. Example: 20855
    # @option opts [String] :business_unit Business Unit code: Example: 80
    # @option opts [BOOLEAN] :sandbox run in sandbox mode Example: false
    # @return [SimplifiedSituationResponse]
    def pic_v1_tracking_services_simplified_get(authorization, id_number, ref, ref_type, opts = {})
      data, _status_code, _headers = pic_v1_tracking_services_simplified_get_with_http_info(authorization, id_number, ref, ref_type, opts)
      data
    end

    # Get situations in simplified format
    # Filter situations by reference, idNumber or ccc
    # @param authorization Bearer token obtained from SSO
    # @param id_number Id Number code. Example: B03260684
    # @param ref Reference code. Example: 866075/4SHZQ6YLMEJ7BF
    # @param ref_type Reference type. Example: REFERENCE | ECB | PARCEL_NUMBER | SECOND_REFERENCE | PACK_REFERENCE
    # @param [Hash] opts the optional parameters
    # @option opts [String] :account_number Account Number. Example: 20855
    # @option opts [String] :business_unit Business Unit code: Example: 80
    # @option opts [BOOLEAN] :sandbox run in sandbox mode Example: false
    # @return [Array<(SimplifiedSituationResponse, Fixnum, Hash)>] SimplifiedSituationResponse data, response status code and response headers
    def pic_v1_tracking_services_simplified_get_with_http_info(authorization, id_number, ref, ref_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrackingServicesApi.pic_v1_tracking_services_simplified_get ...'
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling TrackingServicesApi.pic_v1_tracking_services_simplified_get"
      end
      # verify the required parameter 'id_number' is set
      if @api_client.config.client_side_validation && id_number.nil?
        fail ArgumentError, "Missing the required parameter 'id_number' when calling TrackingServicesApi.pic_v1_tracking_services_simplified_get"
      end
      # verify the required parameter 'ref' is set
      if @api_client.config.client_side_validation && ref.nil?
        fail ArgumentError, "Missing the required parameter 'ref' when calling TrackingServicesApi.pic_v1_tracking_services_simplified_get"
      end
      # verify the required parameter 'ref_type' is set
      if @api_client.config.client_side_validation && ref_type.nil?
        fail ArgumentError, "Missing the required parameter 'ref_type' when calling TrackingServicesApi.pic_v1_tracking_services_simplified_get"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['REFERENCE', 'ECB', 'PARCEL_NUMBER', 'SECOND_REFERENCE', 'PACK_REFERENCE'].include?(ref_type)
        fail ArgumentError, "invalid value for 'ref_type', must be one of REFERENCE, ECB, PARCEL_NUMBER, SECOND_REFERENCE, PACK_REFERENCE"
      end
      # resource path
      local_var_path = '/pic/v1/tracking-services/simplified'

      # query parameters
      query_params = {}
      query_params[:'idNumber'] = id_number
      query_params[:'ref'] = ref
      query_params[:'refType'] = ref_type
      query_params[:'accountNumber'] = opts[:'account_number'] if !opts[:'account_number'].nil?
      query_params[:'businessUnit'] = opts[:'business_unit'] if !opts[:'business_unit'].nil?
      query_params[:'sandbox'] = opts[:'sandbox'] if !opts[:'sandbox'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=UTF-8'])
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SimplifiedSituationResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrackingServicesApi#pic_v1_tracking_services_simplified_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
