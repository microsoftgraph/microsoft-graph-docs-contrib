---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.application import Application
from msgraph_beta.generated.models.allowed_tenants_audience import AllowedTenantsAudience
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Application(
	sign_in_audience = "AzureADMultipleOrgs",
	sign_in_audience_restrictions = AllowedTenantsAudience(
		odata_type = "#microsoft.graph.allowedTenantsAudience",
		is_home_tenant_allowed = True,
		allowed_tenant_ids = [
			"818ce016-78c2-457c-91d7-c02c2faaa5fe",
			"c62670b0-53a1-4a38-b26c-4093cbaa510a",
		],
	),
)

result = await graph_client.applications.by_application_id('application-id').patch(request_body)


```