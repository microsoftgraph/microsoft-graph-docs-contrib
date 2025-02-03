---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.authentication_strength_policy import AuthenticationStrengthPolicy
from msgraph_beta.generated.models.authentication_strength_requirements import AuthenticationStrengthRequirements
from msgraph_beta.generated.models.authentication_method_modes import AuthenticationMethodModes
from msgraph_beta.generated.models.authentication_combination_configuration import AuthenticationCombinationConfiguration
from msgraph_beta.generated.models.fido2_combination_configuration import Fido2CombinationConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AuthenticationStrengthPolicy(
	display_name = "Example",
	requirements_satisfied = AuthenticationStrengthRequirements.Mfa,
	allowed_combinations = [
		AuthenticationMethodModes.Fido2,
	],
	combination_configurations = [
		Fido2CombinationConfiguration(
			odata_type = "#microsoft.graph.fido2CombinationConfiguration",
			id = "42235320-c8db-4d8c-9344-8f1ce87f734b",
			applies_to_combinations = [
				AuthenticationMethodModes.Fido2,
			],
			allowed_a_a_g_u_i_ds = [
				"de1e552d-db1d-4423-a619-566b625cdc84",
				"90a3ccdf-635c-4729-a248-9b709135078f",
			],
		),
	],
	additional_data = {
			"combination_configurations@odata_context" : "https://graph.microsoft.com/beta/$metadata#policies/authenticationStrengthPolicies('5790842a-5bab-44c2-9cf1-b38d675b70ea')/combinationConfigurations",
	}
)

result = await graph_client.policies.authentication_strength_policies.post(request_body)


```