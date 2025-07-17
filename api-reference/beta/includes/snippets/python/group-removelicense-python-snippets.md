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
	],
	remove_licenses = [
		UUID("c7df2760-2c81-4ef7-b578-5b5392b571df"),
		UUID("b05e124f-c7cc-45a0-a6aa-8cf78c946968"),
	],
)

result = await graph_client.groups.by_group_id('group-id').assign_license.post(request_body)


```