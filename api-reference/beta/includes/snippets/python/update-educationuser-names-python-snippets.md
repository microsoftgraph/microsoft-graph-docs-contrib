---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = EducationUser(
	display_name = "Rogelio Cazares",
	given_name = "Rogelio",
	middle_name = "Fernando",
	surname = "Cazares",
)

result = await graph_client.education.users.by_education_user_id('educationUser-id').patch(request_body)


```