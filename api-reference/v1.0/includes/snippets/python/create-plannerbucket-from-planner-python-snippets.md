---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PlannerBucket()
request_body.name = 'Advertising'

request_body.plan_id = 'xqQg5FS2LkCp935s-FIFm2QAFkHM'

request_body.order_hint = ' !'




result = await client.planner.buckets.post(request_body = request_body)


```