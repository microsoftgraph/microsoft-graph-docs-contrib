---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.project_participation import ProjectParticipation
from msgraph_beta.generated.models.company_detail import CompanyDetail
from msgraph_beta.generated.models.position_detail import PositionDetail
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ProjectParticipation(
	categories = [
		"Branding",
	],
	client = CompanyDetail(
		display_name = "Contoso Ltd.",
		department = "Corporate Marketing",
		web_url = "https://www.contoso.com",
	),
	display_name = "Contoso Re-branding Project",
	detail = PositionDetail(
		company = CompanyDetail(
			display_name = "Adventureworks Inc.",
			department = "Consulting",
			web_url = "https://adventureworks.com",
		),
		description = "Rebranding of Contoso Ltd.",
		job_title = "Lead PM Rebranding",
		role = "project management",
		summary = "A 6 month project to help Contoso rebrand after they were divested from a parent organization.",
	),
)

result = await graph_client.me.profile.projects.post(request_body)


```