---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.organization.item.branding.branding_delete_request_body import BrandingDeleteRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = BrandingDeleteRequestBody(
	additional_data = {
			"id" : "0",
	}
)

await graph_client.organization.by_organization_id('organization-id').branding.delete(request_body)


```