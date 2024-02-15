---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.user_account_information import UserAccountInformation

graph_client = GraphServiceClient(credentials, scopes)

request_body = UserAccountInformation(
	allowed_audiences = AllowedAudiences.Organization,
	country_code = "NO",
)

result = await graph_client.me.profile.account.post(request_body)


```