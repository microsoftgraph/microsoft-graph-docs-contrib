---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.organization.item.branding.branding_request_builder import BrandingRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)


request_configuration = BrandingRequestBuilder.BrandingRequestBuilderGetRequestConfiguration()
request_configuration.headers.add("Accept-Language", "fr-FR")


result = await graph_client.organization.by_organization_id('organization-id').branding.get(request_configuration = request_configuration)


```