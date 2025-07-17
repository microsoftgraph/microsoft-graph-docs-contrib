---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.users.item.assign_license.assign_license_post_request_body import AssignLicensePostRequestBody
from msgraph.generated.models.assigned_license import AssignedLicense
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AssignLicensePostRequestBody(
	add_licenses = [
		AssignedLicense(
			disabled_plans = [
				UUID("8a256a2b-b617-496d-b51b-e76466e88db0"),
			],
			sku_id = UUID("84a661c4-e949-4bd2-a560-ed7766fcaf2b"),
		),
		AssignedLicense(
			disabled_plans = [
			],
			sku_id = UUID("f30db892-07e9-47e9-837c-80727f46fd3d"),
		),
	],
	remove_licenses = [
	],
)

result = await graph_client.me.assign_license.post(request_body)


```