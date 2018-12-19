require 'active_model_serializers'

module SpreeSignifyd
  class BillingAddressSerializer < AddressSerializer
    def attributes
      hash = {}
      hash['billingAddress'] = address
      hash
    end
  end
end
