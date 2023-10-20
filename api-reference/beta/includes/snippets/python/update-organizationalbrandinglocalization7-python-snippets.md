---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = OrganizationalBrandingLocalization(
	sign_in_page_text = "Welcome to Contoso France.",
	username_hint_text = " ",
)

result = await graph_client.organization.by_organization_id('organization-id').branding.localizations.by_localization_id('organizationalBrandingLocalization-id').patch(body = request_body)


```