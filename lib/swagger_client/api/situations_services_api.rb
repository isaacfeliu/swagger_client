=begin
#SEUR Public API

#<b>INFORMATION ABOUT THE API</b>  <b>AUTH</b>  All requests must be accompanied by an authentication header with a 'Bearer ' obtained through the SSO token URL:  https://servicios.apipre.seur.io/pic_token  <i>Simple cURL Example</i>  curl -X POST --data-urlencode \"grant_type=client_credentials\" --data-urlencode \"client_id=<>\" --data-urlencode \"client_secret=<>\" https://servicios.apipre.seur.io/pic_token

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.39

=end

require 'uri'

module SwaggerClient
  class SituationsServicesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a new unfinished situation by pack
    # Creates a new unfinished situation request by pack
    # @param [Hash] opts the optional parameters
    # @option opts [UnfinishedSituationRequest] :input The situation request to Process
    # @return [UnfinishedSituationResponse]
    def pic_v1_unfinished_situation_packs_post(opts = {})
      data, _status_code, _headers = pic_v1_unfinished_situation_packs_post_with_http_info(opts)
      data
    end

    # Create a new unfinished situation by pack
    # Creates a new unfinished situation request by pack
    # @param [Hash] opts the optional parameters
    # @option opts [UnfinishedSituationRequest] :input The situation request to Process
    # @return [Array<(UnfinishedSituationResponse, Fixnum, Hash)>] UnfinishedSituationResponse data, response status code and response headers
    def pic_v1_unfinished_situation_packs_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SituationsServicesApi.pic_v1_unfinished_situation_packs_post ...'
      end
      # resource path
      local_var_path = '/pic/v1/unfinished-situation/packs'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=UTF-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=UTF-8'])

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
        :return_type => 'UnfinishedSituationResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SituationsServicesApi#pic_v1_unfinished_situation_packs_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a new unfinished situation
    # Creates a new unfinished situation request
    # @param [Hash] opts the optional parameters
    # @option opts [UnfinishedSituationRequest] :input The situation request to Process
    # @return [UnfinishedSituationResponse]
    def pic_v1_unfinished_situation_post(opts = {})
      data, _status_code, _headers = pic_v1_unfinished_situation_post_with_http_info(opts)
      data
    end

    # Create a new unfinished situation
    # Creates a new unfinished situation request
    # @param [Hash] opts the optional parameters
    # @option opts [UnfinishedSituationRequest] :input The situation request to Process
    # @return [Array<(UnfinishedSituationResponse, Fixnum, Hash)>] UnfinishedSituationResponse data, response status code and response headers
    def pic_v1_unfinished_situation_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SituationsServicesApi.pic_v1_unfinished_situation_post ...'
      end
      # resource path
      local_var_path = '/pic/v1/unfinished-situation'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=UTF-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=UTF-8'])

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
        :return_type => 'UnfinishedSituationResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SituationsServicesApi#pic_v1_unfinished_situation_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
