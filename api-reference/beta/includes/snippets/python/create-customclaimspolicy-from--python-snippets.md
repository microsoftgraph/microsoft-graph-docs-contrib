---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.custom_claims_policy import CustomClaimsPolicy
from msgraph_beta.generated.models.custom_claim_base import CustomClaimBase
from msgraph_beta.generated.models.custom_claim import CustomClaim
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CustomClaimsPolicy(
	odata_type = "#microsoft.graph.customClaimsPolicy",
	include_basic_claim_set = Boolean,
	include_application_id_in_issuer = Boolean,
	audience_override = "String",
	claims = [
		CustomClaim(
			odata_type = "microsoft.graph.customClaim",
		),
	],
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').claims_policy.put(request_body)


```