---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.users.by_user_id('user-id').authentication.temporary_access_pass_methods.by_temporary_access_pass_authentication_method_id('temporaryAccessPassAuthenticationMethod-id').delete()


```