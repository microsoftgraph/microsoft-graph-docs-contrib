---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ItemPatent()
request_body.description = 'Calculating the intent of a user to purchase an item based on the amount of time they hover their mouse over a given pixel.'

request_body.display_name = 'Inferring User Intent through browsing behaviors'

request_body.is_pending = True

request_body.number = 'USPTO-3954432633'

request_body.web_url = 'https://patents.gov/3954432633'




result = await client.me.profile.patents.post(request_body = request_body)


```