---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.me.authentication.software_oath_methods.by_software_oath_authentication_method_id('softwareOathAuthenticationMethod-id').get()


```