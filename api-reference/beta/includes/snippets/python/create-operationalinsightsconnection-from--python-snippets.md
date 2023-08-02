---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = OperationalInsightsConnection()
request_body.@odata_type = '#microsoft.graph.windowsUpdates.operationalInsightsConnection'

request_body.azure_subscription_id = '322ec614-e9c2-4cd5-a55c-5711fdecf02e'

request_body.azure_resource_group_name = 'target-resource-group'

request_body.workspace_name = 'my-workspace'




result = await client.admin.windows.updates.resource_connections.post(request_body = request_body)


```