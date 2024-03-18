---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.user import User
from msgraph.generated.models.authorization_info import AuthorizationInfo

graph_client = GraphServiceClient(credentials, scopes)

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