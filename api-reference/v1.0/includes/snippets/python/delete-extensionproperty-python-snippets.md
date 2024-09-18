---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.applications.by_application_id('application-id').extension_properties.by_extension_property_id('extensionProperty-id').delete()


```