---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = OrganizationalBranding()
request_body.sign_in_page_text = 'Default'

request_body.username_hint_text = 'DefaultHint'



request_configuration = BrandingRequestBuilder.BrandingRequestBuilderPatchRequestConfiguration(
headers = {
		'Accept-Language' : "0",
}

)


result = await client.organization.by_organization_id('organization-id').branding.patch(request_body = request_body, request_configuration = request_configuration)


```