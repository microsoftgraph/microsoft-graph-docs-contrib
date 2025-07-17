---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.x509_certificate_combination_configuration import X509CertificateCombinationConfiguration
from msgraph.generated.models.authentication_method_modes import AuthenticationMethodModes
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = X509CertificateCombinationConfiguration(
	odata_type = "#microsoft.graph.x509CertificateCombinationConfiguration",
	allowed_issuer_skis = [
		"9A4248C6AC8C2931AB2A86537818E92E7B6C97B6",
	],
	allowed_policy_o_i_ds = [
	],
	applies_to_combinations = [
		AuthenticationMethodModes.X509CertificateSingleFactor,
	],
)

result = await graph_client.identity.conditional_access.authentication_strength.policies.by_authentication_strength_policy_id('authenticationStrengthPolicy-id').combination_configurations.post(request_body)


```