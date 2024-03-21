---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.identity.conditional_access.authentication_context_class_references.by_authentication_context_class_reference_id('authenticationContextClassReference-id').get()


```