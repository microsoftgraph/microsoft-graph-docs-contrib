---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = InsightsSettings()
request_body.is_enabled_in_organization = True

request_body.disabled_for_group = 'edbfe4fb-ec70-4300-928f-dbb2ae86c981'




result = await client.organization.by_organization_id('organization-id').settings.people_insights.patch(request_body = request_body)


```