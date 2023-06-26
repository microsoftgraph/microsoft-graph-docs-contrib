---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ResourceConnection()
request_body.@odata_type = '#microsoft.graph.windowsUpdates.operationalInsightsConnection'

additional_data = [
'azure_subscription_id' => '322ec614-e9c2-4cd5-a55c-5711fdecf02e', 
'azure_resource_group_name' => 'target-resource-group', 
'workspace_name' => 'my-workspace', 
];
request_body.additional_data(additional_data)





result = await client.admin.windows.updates.resource_connections.post(request_body = request_body)


```