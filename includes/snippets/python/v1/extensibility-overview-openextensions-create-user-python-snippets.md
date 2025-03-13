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
	extension_name = "com.contoso.socialSettings",
	id = "com.contoso.socialSettings",
	additional_data = {
			"skype_id" : "skypeId.AdeleV",
			"linked_in_profile" : "www.linkedin.com/in/testlinkedinprofile",
			"xbox_gamer_tag" : "AwesomeAdele",
	}
)

result = await graph_client.users.by_user_id('user-id').extensions.post(request_body)


```