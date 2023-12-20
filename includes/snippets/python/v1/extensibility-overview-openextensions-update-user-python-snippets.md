---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = Extension(
	additional_data = {
			"xbox_gamer_tag" : "FierceAdele",
			"linked_in_profile" : "www.linkedin.com/in/testlinkedinprofile",
	}
)

result = await graph_client.users.by_user_id('user-id').extensions.by_extension_id('extension-id').patch(request_body)


```