---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Subscription()
request_body.change_type = 'created,updated,deleted'

request_body.notification_url = 'https://webhook.azurewebsites.net/api/send/myNotifyClient'

request_body.resource = '/users/87d349ed-44d7-43e1-9a83-5f2406dee5bd/chats/getAllMessages?model=B'

request_body.expirationDateTime = DateTime('2023-01-10T18:56:49.112603+00:00')

request_body.client_state = 'ClientSecret'

request_body.include_resource_data = True

request_body.encryption_certificate = 'MMMM/sMMMsssMsMMMsMMsMMMs4sMMsM4ssMsMsMMMss4ssMMMssss...s4sMMMMsM444ssM4MMsssMMMMsM4MMM4sMsM4MMsM44MMM4ssss4Ms4sMM4MMMMM4MMs+ss4MsMssMss4s=='

request_body.encryption_certificate_id = '44M4444M4444M4M44MM4444MM4444MMMM44MM4M4'




result = await client.subscriptions.post(request_body = request_body)


```