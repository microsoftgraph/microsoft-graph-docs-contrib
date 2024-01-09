---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = UserAccountInformation(
	allowed_audiences = AllowedAudiences.Organization,
	country_code = "NO",
)

result = await graph_client.me.profile.account.post(request_body)


```