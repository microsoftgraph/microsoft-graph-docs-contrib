---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.organizational_branding_localization import OrganizationalBrandingLocalization

graph_client = GraphServiceClient(credentials, scopes)

request_body = OrganizationalBrandingLocalization(
	sign_in_page_text = "Welcome to Contoso France.",
	username_hint_text = " ",
)

result = await graph_client.organization.by_organization_id('organization-id').branding.localizations.by_organizational_branding_localization_id('organizationalBrandingLocalization-id').patch(request_body)


```