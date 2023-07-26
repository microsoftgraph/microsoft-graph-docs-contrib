---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = WebAccount()
request_body.web_url = 'https://github.com/innocenty.popov'




result = await client.me.profile.web_accounts.by_web_account_id('webAccount-id').patch(request_body = request_body)


```