---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.organizational_branding_theme_localization import OrganizationalBrandingThemeLocalization
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OrganizationalBrandingThemeLocalization(
	odata_type = "#microsoft.graph.organizationalBrandingThemeLocalization",
	locale = "fr-FR",
	header_background_color = "#3377ffff",
	page_background_color = "#FFFF33",
	sign_in_page_text = "Welcome to Contoso",
	username_hint_text = "ContosoUsername ",
)

result = await graph_client.organization.by_organization_id('organization-id').branding.themes.by_organizational_branding_theme_id('organizationalBrandingTheme-id').localizations.post(request_body)


```