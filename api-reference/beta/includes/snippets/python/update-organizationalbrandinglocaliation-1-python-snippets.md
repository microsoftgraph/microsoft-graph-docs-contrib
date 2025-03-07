---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.organization.item.branding.branding_request_builder import BrandingRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from msgraph_beta.generated.models.organizational_branding import OrganizationalBranding
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OrganizationalBranding(
	sign_in_page_text = "Default",
	username_hint_text = "DefaultHint",
)

request_configuration = RequestConfiguration()
request_configuration.headers.add("Accept-Language", "0")


result = await graph_client.organization.by_organization_id('organization-id').branding.patch(request_body, request_configuration = request_configuration)


```