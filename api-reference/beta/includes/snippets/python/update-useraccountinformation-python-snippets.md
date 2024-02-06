---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = UserAccountInformation(
	country_code = "NO",
)

result = await graph_client.me.profile.account.by_user_account_information_id('userAccountInformation-id').patch(request_body)


```