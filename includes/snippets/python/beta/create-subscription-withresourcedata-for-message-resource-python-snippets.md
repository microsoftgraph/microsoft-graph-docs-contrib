---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Subscription()
request_body.change_type = 'created'

request_body.notification_url = 'https://webhook.azurewebsites.net/api/send/myNotifyClient'

request_body.resource = 'users/622eaaff-0683-4862-9de4-f2ec83c2bd98/messages?$select=Subject,bodyPreview,importance,receivedDateTime,from'

request_body.expirationDateTime = DateTime('2022-01-01T21:42:18.2257768+00:00')

request_body.client_state = 'secretClientValue'

request_body.include_resource_data = True

request_body.encryption_certificate = 'MIIDMzCCAhugAwIBAgIQE7D+++Dk1hKQBqWA=='

request_body.encryption_certificate_id = 'testCertificateId'




result = await client.subscriptions.post(request_body = request_body)


```