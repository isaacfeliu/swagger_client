=begin
#SEUR Public API

#<b>INFORMATION ABOUT THE API</b>  <b>AUTH</b>  All requests must be accompanied by an authentication header with a 'Bearer ' obtained through the SSO token URL:  https://servicios.apipre.seur.io/pic_token  <i>Simple cURL Example</i>  curl -X POST --data-urlencode \"grant_type=client_credentials\" --data-urlencode \"client_id=<>\" --data-urlencode \"client_secret=<>\" https://servicios.apipre.seur.io/pic_token

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.39

=end

require 'date'

module SwaggerClient
  class OutputPlatformRequest
    attr_accessor :destination_partner

    attr_accessor :seur_center_id

    attr_accessor :customer_id

    attr_accessor :country_iso_code

    attr_accessor :postal_code

    attr_accessor :product_code

    attr_accessor :int_product_code

    attr_accessor :service_code

    attr_accessor :int_service_code

    attr_accessor :shipment_type

    attr_accessor :origin_depot

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'destination_partner' => :'destinationPartner',
        :'seur_center_id' => :'seurCenterId',
        :'customer_id' => :'customerId',
        :'country_iso_code' => :'countryISOCode',
        :'postal_code' => :'postalCode',
        :'product_code' => :'productCode',
        :'int_product_code' => :'intProductCode',
        :'service_code' => :'serviceCode',
        :'int_service_code' => :'intServiceCode',
        :'shipment_type' => :'shipmentType',
        :'origin_depot' => :'originDepot'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'destination_partner' => :'Integer',
        :'seur_center_id' => :'Integer',
        :'customer_id' => :'Integer',
        :'country_iso_code' => :'String',
        :'postal_code' => :'String',
        :'product_code' => :'Integer',
        :'int_product_code' => :'Integer',
        :'service_code' => :'Integer',
        :'int_service_code' => :'Integer',
        :'shipment_type' => :'String',
        :'origin_depot' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'destinationPartner')
        self.destination_partner = attributes[:'destinationPartner']
      end

      if attributes.has_key?(:'seurCenterId')
        self.seur_center_id = attributes[:'seurCenterId']
      end

      if attributes.has_key?(:'customerId')
        self.customer_id = attributes[:'customerId']
      end

      if attributes.has_key?(:'countryISOCode')
        self.country_iso_code = attributes[:'countryISOCode']
      end

      if attributes.has_key?(:'postalCode')
        self.postal_code = attributes[:'postalCode']
      end

      if attributes.has_key?(:'productCode')
        self.product_code = attributes[:'productCode']
      end

      if attributes.has_key?(:'intProductCode')
        self.int_product_code = attributes[:'intProductCode']
      end

      if attributes.has_key?(:'serviceCode')
        self.service_code = attributes[:'serviceCode']
      end

      if attributes.has_key?(:'intServiceCode')
        self.int_service_code = attributes[:'intServiceCode']
      end

      if attributes.has_key?(:'shipmentType')
        self.shipment_type = attributes[:'shipmentType']
      end

      if attributes.has_key?(:'originDepot')
        self.origin_depot = attributes[:'originDepot']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          destination_partner == o.destination_partner &&
          seur_center_id == o.seur_center_id &&
          customer_id == o.customer_id &&
          country_iso_code == o.country_iso_code &&
          postal_code == o.postal_code &&
          product_code == o.product_code &&
          int_product_code == o.int_product_code &&
          service_code == o.service_code &&
          int_service_code == o.int_service_code &&
          shipment_type == o.shipment_type &&
          origin_depot == o.origin_depot
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [destination_partner, seur_center_id, customer_id, country_iso_code, postal_code, product_code, int_product_code, service_code, int_service_code, shipment_type, origin_depot].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SwaggerClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
