---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

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