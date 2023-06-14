---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UpdateAudienceByIdPostRequestBody()
request_body.member_entity_type = 'String'

request_body.AddMembers(['String', ])

request_body.RemoveMembers(['String', ])

request_body.AddExclusions(['String', ])

request_body.RemoveExclusions(['String', ])




await client.admin.windows.updates.deployments.by_deployment_id('deployment-id').audience.microsoft_graph_window_update_update_audience_by_id.post(request_body = request_body)


```