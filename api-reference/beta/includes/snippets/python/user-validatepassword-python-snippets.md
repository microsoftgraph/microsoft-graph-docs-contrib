---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ValidatePasswordPostRequestBody()
request_body.password = '1234567890'




result = await client.users.validate_password.post(request_body = request_body)


```