---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.pending_external_user_profile import PendingExternalUserProfile

graph_client = GraphServiceClient(credentials, scopes)

request_body = PendingExternalUserProfile(
	phone_number = "+15555555555",
	display_name = "Bob Henry",
)

result = await graph_client.directory.pending_external_user_profiles.post(request_body)


```