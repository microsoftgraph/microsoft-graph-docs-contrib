---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.me.authentication.fido2_methods.by_fido2_authentication_method_id('fido2AuthenticationMethod-id').get()


```