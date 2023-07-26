---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UpdateAudiencePostRequestBody()
add_members_updatable_asset1 = AzureADDevice()
add_members_updatable_asset1.@odata_type = '#microsoft.graph.windowsUpdates.azureADDevice'

add_members_updatable_asset1.id = 'String (identifier)'


addMembersArray []= addMembersUpdatableAsset1;
request_body.addmembers(addMembersArray)





await client.admin.windows.updates.deployment_audiences.by_deployment_audience_id('deploymentAudience-id').microsoft_graph_window_update_update_audience.post(request_body = request_body)


```