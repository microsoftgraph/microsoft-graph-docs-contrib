---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.identity.custom_authentication_extensions.by_custom_authentication_extension_id('customAuthenticationExtension-id').validate_authentication_configuration.post()


```