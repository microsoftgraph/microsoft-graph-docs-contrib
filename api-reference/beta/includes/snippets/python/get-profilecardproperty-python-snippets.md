---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.admin.people.profile_card_properties.by_profile_card_property_id('profileCardProperty-id').get()


```