---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.extension import Extension
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Extension(
	additional_data = {
			"xbox_gamer_tag" : "FierceAdele",
			"linked_in_profile" : "www.linkedin.com/in/testlinkedinprofile",
	}
)

result = await graph_client.users.by_user_id('user-id').extensions.by_extension_id('extension-id').patch(request_body)


```