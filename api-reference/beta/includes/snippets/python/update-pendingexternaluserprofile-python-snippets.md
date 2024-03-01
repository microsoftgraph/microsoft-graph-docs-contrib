---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.pending_external_user_profile import PendingExternalUserProfile

graph_client = GraphServiceClient(credentials, scopes)

request_body = PendingExternalUserProfile(
	job_title = "Contractor",
)

result = await graph_client.directory.pending_external_user_profiles.by_pending_external_user_profile_id('pendingExternalUserProfile-id').patch(request_body)


```