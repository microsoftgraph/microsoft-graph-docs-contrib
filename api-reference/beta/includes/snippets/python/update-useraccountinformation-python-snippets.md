---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = UserAccountInformation(
	country_code = "NO",
)

result = await graph_client.me.profile.account.by_account_id('userAccountInformation-id').patch(body = request_body)


```