---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.open_type_extension import OpenTypeExtension

graph_client = GraphServiceClient(credentials, scopes)

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