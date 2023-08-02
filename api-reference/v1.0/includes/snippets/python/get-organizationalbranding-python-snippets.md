---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)


request_configuration = BrandingRequestBuilder.BrandingRequestBuilderGetRequestConfiguration(
headers = {
		'Accept-Language' : "0",
}

)


result = await client.organization.by_organization_id('organization-id').branding.get(request_configuration = request_configuration)


```