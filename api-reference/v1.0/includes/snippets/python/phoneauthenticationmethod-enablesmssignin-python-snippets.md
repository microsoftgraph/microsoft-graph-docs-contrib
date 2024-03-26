---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.me.authentication.phone_methods.by_phone_authentication_method_id('phoneAuthenticationMethod-id').enable_sms_sign_in.post()


```