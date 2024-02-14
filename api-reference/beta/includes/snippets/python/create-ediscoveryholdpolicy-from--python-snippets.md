---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.ediscovery_hold_policy import EdiscoveryHoldPolicy

graph_client = GraphServiceClient(credentials, scopes)

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