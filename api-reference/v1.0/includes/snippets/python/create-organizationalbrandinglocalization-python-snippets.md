---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.organizational_branding_localization import OrganizationalBrandingLocalization

graph_client = GraphServiceClient(credentials, scopes)

request_body = OrganizationalBrandingLocalization(
	background_color = "#00000F",
	id = "fr-FR",
	sign_in_page_text = " ",
)

result = await graph_client.organization.by_organization_id('organization-id').branding.localizations.post(request_body)


```