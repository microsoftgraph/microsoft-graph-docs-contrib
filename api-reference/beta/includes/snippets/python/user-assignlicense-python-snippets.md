---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

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