---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Invitation()
request_body.invited_user_display_name = 'John Doe (Tailspin Toys)'

request_body.invited_user_email_address = 'john@tailspintoys.com'

request_body.send_invitation_message = False

request_body.invite_redirect_url = 'https://myapps.microsoft.com'




result = await client.invitations.post(request_body = request_body)


```