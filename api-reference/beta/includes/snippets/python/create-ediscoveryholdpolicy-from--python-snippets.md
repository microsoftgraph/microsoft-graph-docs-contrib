---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.security.ediscovery_hold_policy import EdiscoveryHoldPolicy
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EdiscoveryHoldPolicy(
	display_name = "My legalHold with sources",
	description = "Created from Graph API",
	additional_data = {
			"user_sources@odata_bind" : [
				{
						"@odata_type" : "microsoft.graph.security.userSource",
						"email" : "SalesTeam@contoso.com",
				},
			],
			"site_sources@odata_bind" : [
				{
						"@odata_type" : "microsoft.graph.security.siteSource",
						"site" : {
								"web_url" : "https://m365x809305.sharepoint.com/sites/Design-topsecret",
						},
				},
			],
	}
)

result = await graph_client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').legal_holds.post(request_body)


```