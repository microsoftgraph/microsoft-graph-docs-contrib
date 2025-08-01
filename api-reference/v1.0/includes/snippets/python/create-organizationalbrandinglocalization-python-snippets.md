---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.organizational_branding_localization import OrganizationalBrandingLocalization
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OrganizationalBrandingLocalization(
	background_color = "#00000F",
	id = "fr-FR",
	sign_in_page_text = " ",
)

result = await graph_client.organization.by_organization_id('organization-id').branding.localizations.post(request_body)


```