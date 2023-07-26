---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ChangePasswordPostRequestBody()
request_body.current_password = 'xWwvJ]6NMw+bWH-d'

request_body.new_password = '0eM85N54wFxWwvJ]'




await client.me.change_password.post(request_body = request_body)


```