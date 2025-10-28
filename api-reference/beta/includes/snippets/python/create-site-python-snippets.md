---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.site import Site
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Site(
	name = "Communication Site Test",
	web_url = "https://contoso.sharepoint.com/sites/commsite1",
	description = "Test Site Description",
	additional_data = {
			"locale" : "en-US",
			"share_by_email_enabled" : False,
			"template" : "sitepagepublishing",
			"owner_identity_to_resolve" : {
					"email" : "ryan@contoso.com",
			},
	}
)

result = await graph_client.sites.post(request_body)


```