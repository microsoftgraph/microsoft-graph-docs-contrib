---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.project_participation import ProjectParticipation
from msgraph_beta.generated.models.allowed_audiences import AllowedAudiences
from msgraph_beta.generated.models.company_detail import CompanyDetail
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ProjectParticipation(
	allowed_audiences = AllowedAudiences.Organization,
	client = CompanyDetail(
		department = "Corporate Marketing",
		web_url = "https://www.contoso.com",
	),
)

result = await graph_client.me.profile.projects.by_project_participation_id('projectParticipation-id').patch(request_body)


```