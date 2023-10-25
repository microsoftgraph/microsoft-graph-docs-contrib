---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = Organization(
	odata_type = "#microsoft.graph.organization",
	mobile_device_management_authority = MdmAuthority.Intune,
)

result = await graph_client.organization.by_organization_id('organization-id').patch(body = request_body)


```