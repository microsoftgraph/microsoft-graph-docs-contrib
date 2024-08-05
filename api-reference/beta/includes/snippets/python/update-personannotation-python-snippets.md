---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.person_annotation import PersonAnnotation
from msgraph_beta.generated.models.allowed_audiences import AllowedAudiences

graph_client = GraphServiceClient(credentials, scopes)

request_body = PersonAnnotation(
	allowed_audiences = AllowedAudiences.Organization,
)

result = await graph_client.users.by_user_id('user-id').profile.notes.by_person_annotation_id('personAnnotation-id').patch(request_body)


```