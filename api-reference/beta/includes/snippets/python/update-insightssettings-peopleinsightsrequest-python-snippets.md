---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = InsightsSettings(
	is_enabled_in_organization = True,
	disabled_for_group = "edbfe4fb-ec70-4300-928f-dbb2ae86c981",
)

result = await graph_client.organization.by_organization_id('organization-id').settings.people_insights.patch(request_body)


```