---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.open_type_extension import OpenTypeExtension
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OpenTypeExtension(
	odata_type = "#microsoft.graph.openTypeExtension",
	id = "com.contoso.socialSettings",
	additional_data = {
			"@odata_context" : "https://graph.microsoft.com/beta/$metadata#users('3fbd929d-8c56-4462-851e-0eb9a7b3a2a5')/extensions/$entity",
			"xbox_gamer_tag" : "FierceAdele",
			"linked_in_profile" : "www.linkedin.com/in/testlinkedinprofile",
	}
)

result = await graph_client.users.by_user_id('user-id').extensions.by_extension_id('extension-id').get(request_body)


```