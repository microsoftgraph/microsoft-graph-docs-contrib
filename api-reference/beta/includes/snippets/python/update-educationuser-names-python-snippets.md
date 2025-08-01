---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.education_user import EducationUser
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EducationUser(
	display_name = "Rogelio Cazares",
	given_name = "Rogelio",
	middle_name = "Fernando",
	surname = "Cazares",
)

result = await graph_client.education.users.by_education_user_id('educationUser-id').patch(request_body)


```