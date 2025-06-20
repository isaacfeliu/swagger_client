=begin
#SEUR Public API

#<b>INFORMATION ABOUT THE API</b>  <b>AUTH</b>  All requests must be accompanied by an authentication header with a 'Bearer ' obtained through the SSO token URL:  https://servicios.apipre.seur.io/pic_token  <i>Simple cURL Example</i>  curl -X POST --data-urlencode \"grant_type=client_credentials\" --data-urlencode \"client_id=<>\" --data-urlencode \"client_secret=<>\" https://servicios.apipre.seur.io/pic_token

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.39

=end

require 'date'

module SwaggerClient
  class TariffItemRequestBody
    attr_accessor :business_unit

    attr_accessor :account_number

    attr_accessor :customer_reference

    attr_accessor :customer_merchandise_type

    attr_accessor :recipient_code_type

    attr_accessor :r_eori

    attr_accessor :d_eori

    attr_accessor :incoterm

    attr_accessor :invoice_client_number

    attr_accessor :invoice_client_date

    attr_accessor :invoice_client_valuate

    attr_accessor :invoice_client_badge

    attr_accessor :departures

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'business_unit' => :'businessUnit',
        :'account_number' => :'accountNumber',
        :'customer_reference' => :'customerReference',
        :'customer_merchandise_type' => :'customerMerchandiseType',
        :'recipient_code_type' => :'recipientCodeType',
        :'r_eori' => :'rEORI',
        :'d_eori' => :'dEORI',
        :'incoterm' => :'incoterm',
        :'invoice_client_number' => :'invoiceClientNumber',
        :'invoice_client_date' => :'invoiceClientDate',
        :'invoice_client_valuate' => :'invoiceClientValuate',
        :'invoice_client_badge' => :'invoiceClientBadge',
        :'departures' => :'departures'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'business_unit' => :'String',
        :'account_number' => :'String',
        :'customer_reference' => :'String',
        :'customer_merchandise_type' => :'String',
        :'recipient_code_type' => :'String',
        :'r_eori' => :'String',
        :'d_eori' => :'String',
        :'incoterm' => :'String',
        :'invoice_client_number' => :'String',
        :'invoice_client_date' => :'String',
        :'invoice_client_valuate' => :'Float',
        :'invoice_client_badge' => :'String',
        :'departures' => :'Array<Departure>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'businessUnit')
        self.business_unit = attributes[:'businessUnit']
      end

      if attributes.has_key?(:'accountNumber')
        self.account_number = attributes[:'accountNumber']
      end

      if attributes.has_key?(:'customerReference')
        self.customer_reference = attributes[:'customerReference']
      end

      if attributes.has_key?(:'customerMerchandiseType')
        self.customer_merchandise_type = attributes[:'customerMerchandiseType']
      end

      if attributes.has_key?(:'recipientCodeType')
        self.recipient_code_type = attributes[:'recipientCodeType']
      end

      if attributes.has_key?(:'rEORI')
        self.r_eori = attributes[:'rEORI']
      end

      if attributes.has_key?(:'dEORI')
        self.d_eori = attributes[:'dEORI']
      end

      if attributes.has_key?(:'incoterm')
        self.incoterm = attributes[:'incoterm']
      end

      if attributes.has_key?(:'invoiceClientNumber')
        self.invoice_client_number = attributes[:'invoiceClientNumber']
      end

      if attributes.has_key?(:'invoiceClientDate')
        self.invoice_client_date = attributes[:'invoiceClientDate']
      end

      if attributes.has_key?(:'invoiceClientValuate')
        self.invoice_client_valuate = attributes[:'invoiceClientValuate']
      end

      if attributes.has_key?(:'invoiceClientBadge')
        self.invoice_client_badge = attributes[:'invoiceClientBadge']
      end

      if attributes.has_key?(:'departures')
        if (value = attributes[:'departures']).is_a?(Array)
          self.departures = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @business_unit.nil?
        invalid_properties.push('invalid value for "business_unit", business_unit cannot be nil.')
      end

      if @account_number.nil?
        invalid_properties.push('invalid value for "account_number", account_number cannot be nil.')
      end

      if @customer_reference.nil?
        invalid_properties.push('invalid value for "customer_reference", customer_reference cannot be nil.')
      end

      if @customer_merchandise_type.nil?
        invalid_properties.push('invalid value for "customer_merchandise_type", customer_merchandise_type cannot be nil.')
      end

      if @r_eori.nil?
        invalid_properties.push('invalid value for "r_eori", r_eori cannot be nil.')
      end

      if @invoice_client_valuate.nil?
        invalid_properties.push('invalid value for "invoice_client_valuate", invoice_client_valuate cannot be nil.')
      end

      if @invoice_client_badge.nil?
        invalid_properties.push('invalid value for "invoice_client_badge", invoice_client_badge cannot be nil.')
      end

      if @departures.nil?
        invalid_properties.push('invalid value for "departures", departures cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @business_unit.nil?
      return false if @account_number.nil?
      return false if @customer_reference.nil?
      return false if @customer_merchandise_type.nil?
      return false if @r_eori.nil?
      return false if @invoice_client_valuate.nil?
      return false if @invoice_client_badge.nil?
      return false if @departures.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          business_unit == o.business_unit &&
          account_number == o.account_number &&
          customer_reference == o.customer_reference &&
          customer_merchandise_type == o.customer_merchandise_type &&
          recipient_code_type == o.recipient_code_type &&
          r_eori == o.r_eori &&
          d_eori == o.d_eori &&
          incoterm == o.incoterm &&
          invoice_client_number == o.invoice_client_number &&
          invoice_client_date == o.invoice_client_date &&
          invoice_client_valuate == o.invoice_client_valuate &&
          invoice_client_badge == o.invoice_client_badge &&
          departures == o.departures
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [business_unit, account_number, customer_reference, customer_merchandise_type, recipient_code_type, r_eori, d_eori, incoterm, invoice_client_number, invoice_client_date, invoice_client_valuate, invoice_client_badge, departures].hash
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
