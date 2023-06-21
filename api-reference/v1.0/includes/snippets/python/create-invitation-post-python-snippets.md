---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Invitation()
request_body.invited_user_email_address = 'admin@fabrikam.com'

request_body.invite_redirect_url = 'https://myapp.contoso.com'




result = await client.invitations.post(request_body = request_body)


```