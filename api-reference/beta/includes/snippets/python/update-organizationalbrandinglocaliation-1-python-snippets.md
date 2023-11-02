---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = OrganizationalBranding(
	sign_in_page_text = "Default",
	username_hint_text = "DefaultHint",
)

request_configuration = BrandingRequestBuilder.BrandingRequestBuilderPatchRequestConfiguration(
headers = {
		'Accept-Language' : "0",
}

)

result = await graph_client.organization.by_organization_id('organization-id').branding.patch(body = request_body, request_configuration = request_configuration)


```