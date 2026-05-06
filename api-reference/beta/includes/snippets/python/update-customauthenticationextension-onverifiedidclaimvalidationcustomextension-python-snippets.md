---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.custom_authentication_extension import CustomAuthenticationExtension
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CustomAuthenticationExtension(
	odata_type = "#microsoft.graph.onVerifiedIdClaimValidationCustomExtension",
	display_name = "Verified ID Claim Validation (updated)",
	description = "Updated description for Verified ID claim validation",
)

result = await graph_client.identity.custom_authentication_extensions.by_custom_authentication_extension_id('customAuthenticationExtension-id').patch(request_body)


```