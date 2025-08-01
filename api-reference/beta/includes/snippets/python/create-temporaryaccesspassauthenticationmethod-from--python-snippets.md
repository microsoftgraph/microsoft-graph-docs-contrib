---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.temporary_access_pass_authentication_method import TemporaryAccessPassAuthenticationMethod
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = TemporaryAccessPassAuthenticationMethod(
	start_date_time = "2022-06-05T00:00:00.000Z",
	lifetime_in_minutes = 60,
	is_usable_once = False,
)

result = await graph_client.users.by_user_id('user-id').authentication.temporary_access_pass_methods.post(request_body)


```