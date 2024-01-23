---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = BrandingDeleteRequestBody(
	additional_data = {
			"id" : "0",
	}
)

await graph_client.organization.by_organization_id('organization-id').branding.delete(request_body)


```