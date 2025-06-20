=begin
#SEUR Public API

#<b>INFORMATION ABOUT THE API</b>  <b>AUTH</b>  All requests must be accompanied by an authentication header with a 'Bearer ' obtained through the SSO token URL:  https://servicios.apipre.seur.io/pic_token  <i>Simple cURL Example</i>  curl -X POST --data-urlencode \"grant_type=client_credentials\" --data-urlencode \"client_id=<>\" --data-urlencode \"client_secret=<>\" https://servicios.apipre.seur.io/pic_token

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.39

=end

require 'uri'

module SwaggerClient
  class LeadTimeServicesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Lead time between two postal codes
    # Provides the door-to-door transit time between two postal codes
    # @param authorization Bearer token obtained from SSO
    # @param [Hash] opts the optional parameters
    # @option opts [ZipToZipcodesRequest] :input The pickup to create
    # @return [ZipToZipcodesResponse]
    def pic_v1_zip_to_zipcodes_post(authorization, opts = {})
      data, _status_code, _headers = pic_v1_zip_to_zipcodes_post_with_http_info(authorization, opts)
      data
    end

    # Lead time between two postal codes
    # Provides the door-to-door transit time between two postal codes
    # @param authorization Bearer token obtained from SSO
    # @param [Hash] opts the optional parameters
    # @option opts [ZipToZipcodesRequest] :input The pickup to create
    # @return [Array<(ZipToZipcodesResponse, Fixnum, Hash)>] ZipToZipcodesResponse data, response status code and response headers
    def pic_v1_zip_to_zipcodes_post_with_http_info(authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeadTimeServicesApi.pic_v1_zip_to_zipcodes_post ...'
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling LeadTimeServicesApi.pic_v1_zip_to_zipcodes_post"
      end
      # resource path
      local_var_path = '/pic/v1/zip-to-zipcodes'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=UTF-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=UTF-8'])
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'input'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ZipToZipcodesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeadTimeServicesApi#pic_v1_zip_to_zipcodes_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
