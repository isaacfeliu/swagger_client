=begin
#SEUR Public API

#<b>INFORMATION ABOUT THE API</b>  <b>AUTH</b>  All requests must be accompanied by an authentication header with a 'Bearer ' obtained through the SSO token URL:  https://servicios.apipre.seur.io/pic_token  <i>Simple cURL Example</i>  curl -X POST --data-urlencode \"grant_type=client_credentials\" --data-urlencode \"client_id=<>\" --data-urlencode \"client_secret=<>\" https://servicios.apipre.seur.io/pic_token

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.39

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::SimplifiedSituation
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SimplifiedSituation' do
  before do
    # run before each test
    @instance = SwaggerClient::SimplifiedSituation.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SimplifiedSituation' do
    it 'should create an instance of SimplifiedSituation' do
      expect(@instance).to be_instance_of(SwaggerClient::SimplifiedSituation)
    end
  end
  describe 'test attribute "event_code"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "description"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "situation_date"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "ref_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["REFERENCE", "ECB", "PARCEL_NUMBER", "SECOND_REFERENCE", "PACK_REFERENCE"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.ref_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "ref"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "shipment_internal_code"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "refs"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
