---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.user_account_information import UserAccountInformation
from msgraph_beta.generated.models.allowed_audiences import AllowedAudiences

graph_client = GraphServiceClient(credentials, scopes)

request_body = UserAccountInformation(
	allowed_audiences = AllowedAudiences.Organization,
	country_code = "NO",
)

result = await graph_client.me.profile.account.post(request_body)


```