---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.user import User
from msgraph_beta.generated.models.authorization_info import AuthorizationInfo
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = User(
	business_phones = [
		"+1 425 555 0109",
	],
	office_location = "18/2111",
	authorization_info = AuthorizationInfo(
		certificate_user_ids = [
			"5432109876543210@mil",
		],
	),
)

result = await graph_client.users.by_user_id('user-id').patch(request_body)


```