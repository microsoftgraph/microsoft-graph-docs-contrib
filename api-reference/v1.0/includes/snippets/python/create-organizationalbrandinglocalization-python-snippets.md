---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = OrganizationalBrandingLocalization(
	background_color = "#00000F",
	id = "fr-FR",
	sign_in_page_text = " ",
)

result = await graph_client.organization.by_organization_id('organization-id').branding.localizations.post(request_body)


```