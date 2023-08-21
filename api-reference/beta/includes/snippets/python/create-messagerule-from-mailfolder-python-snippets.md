---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = MessageRule()
request_body.display_name = 'From partner'

request_body.Sequence = 2

request_body.is_enabled = True

conditions = MessageRulePredicates()
conditions.SenderContains(['adele', ])


request_body.conditions = conditions
actions = MessageRuleActions()
forward_to_recipient1 = Recipient()
forward_to_recipient1email_address = EmailAddress()
forward_to_recipient1email_address.name = 'Alex Wilbur'

forward_to_recipient1email_address.address = 'AlexW@contoso.onmicrosoft.com'


forward_to_recipient1.email_address = forward_to_recipient1email_address

forwardToArray []= forwardToRecipient1;
actions.forwardto(forwardToArray)


actions.stop_processing_rules = True


request_body.actions = actions



result = await client.me.mail_folders.by_mail_folder_id('mailFolder-id').message_rules.post(request_body = request_body)


```