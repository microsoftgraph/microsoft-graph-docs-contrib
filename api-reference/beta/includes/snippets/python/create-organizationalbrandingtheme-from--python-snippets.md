---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.organizational_branding_theme import OrganizationalBrandingTheme
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OrganizationalBrandingTheme(
	odata_type = "#microsoft.graph.organizationalBrandingTheme",
	name = "ContosoTheme",
	is_default_theme = True,
)

result = await graph_client.organization.by_organization_id('organization-id').branding.themes.post(request_body)


```