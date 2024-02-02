---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)


request_configuration = BrandingRequestBuilder.BrandingRequestBuilderGetRequestConfiguration()
request_configuration.headers.add("Accept-Language", "0")


result = await graph_client.organization.by_organization_id('organization-id').branding.get(request_configuration = request_configuration)


```