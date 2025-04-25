---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.identity.conditionalaccess.evaluate.evaluate_post_request_body import EvaluatePostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EvaluatePostRequestBody(
	applied_policies_only = True,
	additional_data = {
			"sign_in_identity" : {
					"@odata_type" : "#microsoft.graph.userSignIn",
					"user_id" : "15dc174b-f34c-4588-ac45-61d6e05dce93",
			},
			"sign_in_context" : {
					"@odata_type" : "#microsoft.graph.userActionContext",
					"user_action" : "registerSecurityInformation",
			},
			"sign_in_conditions" : {
					"device_platform" : "macOS",
					"client_app_type" : "browser",
					"sign_in_risk_level" : "low",
					"user_risk_level" : "high",
					"service_principal_risk_level" : "none",
					"country" : "CA",
					"ip_address" : "40.77.182.32",
					"insider_risk_level" : "minor",
					"authentication_flow" : {
							"transfer_method" : "deviceCodeFlow",
					},
					"device_info" : {
							"trust_type" : "EntraID",
					},
			},
	}
)

result = await graph_client.identity.conditional_access.evaluate.post(request_body)


```