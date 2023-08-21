---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = MessageRule()
request_body.display_name = 'Important from partner'

actions = MessageRuleActions()
actions.markimportance(Importance.High('importance.high'))


request_body.actions = actions



result = await client.me.mail_folders.by_mail_folder_id('mailFolder-id').message_rules.by_message_rule_id('messageRule-id').patch(request_body = request_body)


```