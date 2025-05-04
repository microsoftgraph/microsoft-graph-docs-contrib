---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.identity.conditionalaccess.evaluate.evaluate_post_request_body import EvaluatePostRequestBody
from msgraph_beta.generated.models.service_principal_sign_in import ServicePrincipalSignIn
from msgraph_beta.generated.models.application_context import ApplicationContext
from msgraph_beta.generated.models.sign_in_conditions import SignInConditions
from msgraph_beta.generated.models.risk_level import RiskLevel
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EvaluatePostRequestBody(
	sign_in_identity = ServicePrincipalSignIn(
		odata_type = "#microsoft.graph.servicePrincipalSignIn",
		service_principal_id = "c65b94a5-0049-439a-a6fd-bce307077730",
	),
	sign_in_context = ApplicationContext(
		odata_type = "#microsoft.graph.applicationContext",
		include_applications = [
			"00000003-0000-0ff1-ce00-000000000000",
		],
	),
	sign_in_conditions = SignInConditions(
		service_principal_risk_level = RiskLevel.High,
		country = "CA",
		ip_address = "40.77.182.32",
	),
	applied_policies_only = True,
)

result = await graph_client.identity.conditional_access.evaluate.post(request_body)


```