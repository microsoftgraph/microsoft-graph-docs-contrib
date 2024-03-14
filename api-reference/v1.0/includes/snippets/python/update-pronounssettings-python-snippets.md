---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.pronouns_settings import PronounsSettings

graph_client = GraphServiceClient(credentials, scopes)

request_body = PronounsSettings(
	is_enabled_in_organization = True,
)

result = await graph_client.admin.people.pronouns.patch(request_body)


```