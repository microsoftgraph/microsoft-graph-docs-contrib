---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.cloud_licensing.assignment import Assignment
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Assignment(
	odata_type = "#microsoft.graph.cloudLicensing.assignment",
	disabled_service_plan_ids = [
		UUID("bed136c6-b799-4462-824d-fc045d3a9d25"),
	],
	additional_data = {
			"allotment@odata_bind" : "https://graph.microsoft.com/beta/admin/cloudLicensing/allotments/rkocgef3dgjhnu3gmu2mqhbdbmwcymnf6fk3k6a7zbui5e7gfpmi",
			"assigned_to@odata_bind" : "https://graph.microsoft.com/beta/users/6d645c5f-089f-40d8-b0e7-136fb5c56d5b",
	}
)

result = await graph_client.admin.cloud_licensing.assignments.post(request_body)


```