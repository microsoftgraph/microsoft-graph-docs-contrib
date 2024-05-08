---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.assign_license.assign_license_post_request_body import AssignLicensePostRequestBody
from msgraph.generated.models.assigned_license import AssignedLicense

graph_client = GraphServiceClient(credentials, scopes)

request_body = AssignLicensePostRequestBody(
	add_licenses = [
		AssignedLicense(
			disabled_plans = [
				UUID("11b0131d-43c8-4bbb-b2c8-e80f9a50834a"),
			],
			sku_id = UUID("45715bb8-13f9-4bf6-927f-ef96c102d394"),
		),
	],
	remove_licenses = [
		UUID("bea13e0c-3828-4daa-a392-28af7ff61a0f"),
	],
)

result = await graph_client.me.assign_license.post(request_body)


```