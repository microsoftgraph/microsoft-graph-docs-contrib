---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = ReferenceCreate(
	odata_id = "https://graph.microsoft.com/odata/groups('1a9db3ab-0acf-4808-99ae-e8ed581cb2e0')",
)

await graph_client.policies.mobile_app_management_policies.by_mobile_app_management_policie_id('mobilityManagementPolicy-id').included_groups.ref.post(body = request_body)


```