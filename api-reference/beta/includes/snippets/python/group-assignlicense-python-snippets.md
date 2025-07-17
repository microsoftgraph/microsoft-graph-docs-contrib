---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.groups.item.assign_license.assign_license_post_request_body import AssignLicensePostRequestBody
from msgraph_beta.generated.models.assigned_license import AssignedLicense
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AssignLicensePostRequestBody(
	add_licenses = [
		AssignedLicense(
			disabled_plans = [
				UUID("113feb6c-3fe4-4440-bddc-54d774bf0318"),
				UUID("14ab5db5-e6c4-4b20-b4bc-13e36fd2227f"),
			],
			sku_id = UUID("b05e124f-c7cc-45a0-a6aa-8cf78c946968"),
		),
		AssignedLicense(
			disabled_plans = [
				UUID("a413a9ff-720c-4822-98ef-2f37c2a21f4c"),
			],
			sku_id = UUID("c7df2760-2c81-4ef7-b578-5b5392b571df"),
		),
	],
	remove_licenses = [
	],
)

result = await graph_client.groups.by_group_id('group-id').assign_license.post(request_body)


```