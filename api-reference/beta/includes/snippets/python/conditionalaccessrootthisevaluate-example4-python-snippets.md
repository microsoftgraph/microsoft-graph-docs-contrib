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
					"@odata_type" : "#microsoft.graph.servicePrincipalSignIn",
					"service_principal_id" : "c65b94a5-0049-439a-a6fd-bce307077730",
			},
			"sign_in_context" : {
					"@odata_type" : "#microsoft.graph.applicationContext",
					"include_applications" : [
						"00000003-0000-0ff1-ce00-000000000000",
					],
			},
			"sign_in_conditions" : {
					"service_principal_risk_level" : "high",
					"country" : "CA",
					"ip_address" : "40.77.182.32",
			},
	}
)

result = await graph_client.identity.conditional_access.evaluate.post(request_body)


```