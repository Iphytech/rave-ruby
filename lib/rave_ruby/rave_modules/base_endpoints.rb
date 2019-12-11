module BASE_ENDPOINTS
    RAVE_LIVE_URL = "https://api.ravepay.co/"
    RAVE_SANDBOX_URL = "https://ravesandboxapi.flutterwave.com/"
    CHARGE_ENDPOINT = "flwv3-pug/getpaidx/api/charge"
    TOKENISED_CHARGE_ENDPOINT = "flwv3-pug/getpaidx/api/tokenized/charge"
    PREAUTH_CHARGE_ENDPOINT = "flwv3-pug/getpaidx/api/tokenized/preauth_charge"
    CAPTURE_ENDPOINT = "flwv3-pug/getpaidx/api/capture"
    REFUND_VOID_ENDPOINT = "flwv3-pug/getpaidx/api/refundorvoid"
    CARD_VALIDATE_ENDPOINT = "flwv3-pug/getpaidx/api/validatecharge"
    ACCOUNT_VALIDATE_ENDPOINT = "flwv3-pug/getpaidx/api/validate"
    VERIFY_ENDPOINT = "flwv3-pug/getpaidx/api/v2/verify"
    PAYMENT_PLANS_ENDPOINT = "v2/gpx/paymentplans"
    SUBSCRIPTIONS_ENDPOINT = "v2/gpx/subscriptions"
    TRANSFER_ENDPOINT = "v2/gpx/transfers"
    SUBACCOUNT_ENDPOINT = "v2/gpx/subaccounts"
    GET_FEE_ENDPOINT = "v2/gpx/transfers/fee"
    GET_BALANCE_ENDPOINT = "v2/gpx/balance"
    REFUND_ENDPOINT = "gpx/merchant/transactions/refund"
    BANKS_ENDPOINT = "flwv3-pug/getpaidx/api/flwpbf-banks.js"
    BILL_PAYMENTS_ENDPOINT = "v2/services/confluence"
end
