---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ItemPatent()
request_body.number = 'USPTO-3954432633'

request_body.web_url = 'https://patents.gov/3954432633'




result = await client.users.by_user_id('user-id').profile.patents.by_patent_id('itemPatent-id').patch(request_body = request_body)


```