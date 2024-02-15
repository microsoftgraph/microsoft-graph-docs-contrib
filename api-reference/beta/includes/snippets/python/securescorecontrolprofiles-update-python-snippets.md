---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.secure_score_control_profile import SecureScoreControlProfile

graph_client = GraphServiceClient(credentials, scopes)

request_body = SecureScoreControlProfile(
	control_state_updates = "controlStateUpdates-value",
)

result = await graph_client.security.secure_score_control_profiles.by_secure_score_control_profile_id('secureScoreControlProfile-id').patch(request_body)


```