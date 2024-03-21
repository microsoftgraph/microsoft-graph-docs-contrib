---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.external_user_profile import ExternalUserProfile

graph_client = GraphServiceClient(credentials, scopes)

request_body = ExternalUserProfile(
	job_title = "Contractor",
)

result = await graph_client.directory.external_user_profiles.by_external_user_profile_id('externalUserProfile-id').patch(request_body)


```