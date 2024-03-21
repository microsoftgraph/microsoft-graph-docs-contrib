---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.project_participation import ProjectParticipation
from msgraph.generated.models.company_detail import CompanyDetail

graph_client = GraphServiceClient(credentials, scopes)

request_body = ProjectParticipation(
	allowed_audiences = AllowedAudiences.Organization,
	client = CompanyDetail(
		department = "Corporate Marketing",
		web_url = "https://www.contoso.com",
	),
)

result = await graph_client.me.profile.projects.by_project_participation_id('projectParticipation-id').patch(request_body)


```