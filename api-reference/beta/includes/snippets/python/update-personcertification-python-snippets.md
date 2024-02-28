---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.person_certification import PersonCertification

graph_client = GraphServiceClient(credentials, scopes)

request_body = PersonCertification(
	issuing_authority = "International Academy of Marketing Excellence",
	issuing_company = "International Academy of Marketing Excellence",
)

result = await graph_client.users.by_user_id('user-id').profile.certifications.by_person_certification_id('personCertification-id').patch(request_body)


```