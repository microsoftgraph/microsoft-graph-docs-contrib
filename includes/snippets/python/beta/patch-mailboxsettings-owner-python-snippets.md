---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = MailboxSettings()
request_body.delegatemeetingmessagedeliveryoptions(DelegateMeetingMessageDeliveryOptions.SendToDelegateAndPrincipal('delegatemeetingmessagedeliveryoptions.sendtodelegateandprincipal'))




result = await client.users.by_user_id('user-id').mailbox_settings.patch(request_body = request_body)


```