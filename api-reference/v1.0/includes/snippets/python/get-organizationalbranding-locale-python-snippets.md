---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)


request_configuration = BrandingRequestBuilder.BrandingRequestBuilderGetRequestConfiguration(
headers = {
		'Accept-Language' : "fr-FR",
}

)

result = await graph_client.organization.by_organization_id('organization-id').branding.get(request_configuration = request_configuration)


```