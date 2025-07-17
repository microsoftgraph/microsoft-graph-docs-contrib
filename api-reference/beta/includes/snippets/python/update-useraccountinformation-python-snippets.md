---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.user_account_information import UserAccountInformation
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = UserAccountInformation(
	country_code = "NO",
)

result = await graph_client.me.profile.account.by_user_account_information_id('userAccountInformation-id').patch(request_body)


```