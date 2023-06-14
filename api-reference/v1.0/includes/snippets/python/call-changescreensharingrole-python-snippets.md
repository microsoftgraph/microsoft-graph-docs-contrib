---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ChangeScreenSharingRolePostRequestBody()
request_body.role(ScreenSharingRole.Viewer('screensharingrole.viewer'))




await client.communications.calls.by_call_id('call-id').change_screen_sharing_role.post(request_body = request_body)


```