---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.sites.item.contenttypes.item.associate_with_hub_sites.associate_with_hub_sites_post_request_body import AssociateWithHubSitesPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AssociateWithHubSitesPostRequestBody(
	hub_site_urls = [
		"https://graph.microsoft.com/v1.0/sites/{site-id}",
	],
	propagate_to_existing_lists = False,
)

await graph_client.sites.by_site_id('site-id').content_types.by_content_type_id('contentType-id').associate_with_hub_sites.post(request_body)


```