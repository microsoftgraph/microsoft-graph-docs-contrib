---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Subscription()
request_body.change_type = 'created,updated'

request_body.notification_url = 'https://webhook.azurewebsites.net/api/resourceNotifications'

request_body.lifecycle_notification_url = 'https://webhook.azurewebsites.net/api/lifecycleNotifications'

request_body.resource = '/users/{id}/messages'

request_body.expirationDateTime = DateTime('2020-03-20T11:00:00.0000000Z')

request_body.client_state = '<secretClientState>'




result = await client.subscriptions.post(request_body = request_body)


```