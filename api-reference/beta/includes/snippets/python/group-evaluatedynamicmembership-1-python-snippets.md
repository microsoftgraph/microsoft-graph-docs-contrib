---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EvaluateDynamicMembershipPostRequestBody()
request_body.member_id = '319b41e8-d9e4-42f8-bdc9-741113f48b33'




result = await client.groups.by_group_id('group-id').evaluate_dynamic_membership.post(request_body = request_body)


```