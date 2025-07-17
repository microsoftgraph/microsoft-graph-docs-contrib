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
	],
	remove_licenses = [
		UUID("f30db892-07e9-47e9-837c-80727f46fd3d"),
		UUID("84a661c4-e949-4bd2-a560-ed7766fcaf2b"),
	],
)

result = await graph_client.me.assign_license.post(request_body)


```