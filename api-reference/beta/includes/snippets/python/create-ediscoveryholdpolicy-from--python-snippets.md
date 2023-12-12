---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = EdiscoveryHoldPolicy(
	display_name = "My legalHold with sources",
	description = "Created from Graph API",
	additional_data = {
			"user_sources@odata_bind" : [
				{
						"@odata_type" : "microsoft.graph.security.userSource",
						"email" : "SalesTeam@M365x809305.OnMicrosoft.com",
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