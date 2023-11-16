---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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