require_relative "base/transfer_base.rb"
require 'json'

class TransferRecipient < TransferBase

    #method to create a transfer recipient 
    def create_transfer_recipient(data)
        base_url = rave_object.base_url
        data.merge!({"seckey" => rave_object.secret_key.dup})
        required_parameters = ["account_number", "account_bank"]
        check_passed_parameters(required_parameters, data)
        payload = data.to_json
        response = post_request("#{base_url}#{BASE_ENDPOINTS::TRANSFER_ENDPOINT}/beneficiaries/create", payload) 
        return handle_transfer_recipient(response)
    end

      # method to fetch a transfer recipient 
      def fetch_recipient(data)
        base_url = rave_object.base_url
        data.merge!({"seckey" => rave_object.secret_key.dup})
        payload = data.to_json
        response = get_request("#{base_url}#{BASE_ENDPOINTS::TRANSFER_ENDPOINT}/beneficiaries", payload)
        return handle_transfer_recipient(response)
    end

    #method to list recipiets
     def list_recipients
        base_url = rave_object.base_url
        response = get_request("#{base_url}#{BASE_ENDPOINTS::TRANSFER_ENDPOINT}/beneficiaries", {"seckey" => rave_object.secret_key.dup})
        return handle_transfer_recipient(response)
    end

    #method to delete a recipient
    def delete_recipient(data)
        base_url = rave_object.base_url
        data.merge!({"seckey" => rave_object.secret_key.dup})
        required_parameters = ["id"]
        check_passed_parameters(required_parameters, data)
        payload = data.to_json
        response = post_request("#{base_url}#{BASE_ENDPOINTS::TRANSFER_ENDPOINT}/beneficiaries/delete", payload)
        return handle_transfer_recipient(response)
    end
end