---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.user import User

graph_client = GraphServiceClient(credentials, scopes)

request_body = User(
	business_phones = [
		"+1 425 555 0109",
	],
	office_location = "18/2111",
)

result = await graph_client.users.by_user_id('user-id').patch(request_body)


```