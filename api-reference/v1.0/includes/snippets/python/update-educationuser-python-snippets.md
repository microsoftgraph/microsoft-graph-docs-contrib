---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.education_user import EducationUser

graph_client = GraphServiceClient(credentials, scopes)

request_body = EducationUser(
	display_name = "Rogelio Cazares",
	given_name = "Rogelio",
	middle_name = "Fernando",
	surname = "Cazares",
)

result = await graph_client.education.users.by_education_user_id('educationUser-id').patch(request_body)


```