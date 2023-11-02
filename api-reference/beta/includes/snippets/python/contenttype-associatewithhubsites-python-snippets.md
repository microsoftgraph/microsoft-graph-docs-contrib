---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = AssociateWithHubSitesPostRequestBody(
	hub_site_urls = [
		"https://graph.microsoft.com/beta/sites/id",
	],
	propagate_to_existing_lists = False,
)

await graph_client.sites.by_site_id('site-id').content_types.by_content_type_id('contentType-id').associate_with_hub_sites.post(request_body)


```