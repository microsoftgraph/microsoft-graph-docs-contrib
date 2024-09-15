---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.user_account_information import UserAccountInformation
from msgraph_beta.generated.models.allowed_audiences import AllowedAudiences
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = UserAccountInformation(
	allowed_audiences = AllowedAudiences.Organization,
	country_code = "NO",
)

result = await graph_client.me.profile.account.post(request_body)


```