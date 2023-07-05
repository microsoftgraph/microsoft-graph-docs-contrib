---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = OnTokenIssuanceStartCustomExtension()
request_body.@odata_type = '#microsoft.graph.onTokenIssuanceStartCustomExtension'

request_body.display_name = 'onTokenIssuanceStartCustomExtension'

request_body.description = 'Fetch additional claims from custom user store'

endpoint_configuration = HttpRequestEndpoint()
endpoint_configuration.@odata_type = '#microsoft.graph.httpRequestEndpoint'

endpoint_configuration.target_url = 'https://authenticationeventsAPI.contoso.com'


request_body.endpoint_configuration = endpoint_configuration
authentication_configuration = AzureAdTokenAuthentication()
authentication_configuration.@odata_type = '#microsoft.graph.azureAdTokenAuthentication'

authentication_configuration.resource_id = 'api://authenticationeventsAPI.contoso.com/a13d0fc1-04ab-4ede-b215-63de0174cbb4'


request_body.authentication_configuration = authentication_configuration
claims_for_token_configuration_on_token_issuance_start_return_claim1 = OnTokenIssuanceStartReturnClaim()
claims_for_token_configuration_on_token_issuance_start_return_claim1.claim_id_in_api_response = 'DateOfBirth'


claimsForTokenConfigurationArray []= claimsForTokenConfigurationOnTokenIssuanceStartReturnClaim1;
claims_for_token_configuration_on_token_issuance_start_return_claim2 = OnTokenIssuanceStartReturnClaim()
claims_for_token_configuration_on_token_issuance_start_return_claim2.claim_id_in_api_response = 'CustomRoles'


claimsForTokenConfigurationArray []= claimsForTokenConfigurationOnTokenIssuanceStartReturnClaim2;
request_body.claimsfortokenconfiguration(claimsForTokenConfigurationArray)





result = await client.identity.custom_authentication_extensions.by_custom_authentication_extension_id('customAuthenticationExtension-id').patch(request_body = request_body)


```