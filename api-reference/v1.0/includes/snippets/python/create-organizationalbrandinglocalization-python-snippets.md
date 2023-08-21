---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = OrganizationalBrandingLocalization()
request_body.background_color = '#00000F'

request_body.id = 'fr-FR'

request_body.sign_in_page_text = ' '




result = await client.organization.by_organization_id('organization-id').branding.localizations.post(request_body = request_body)


```