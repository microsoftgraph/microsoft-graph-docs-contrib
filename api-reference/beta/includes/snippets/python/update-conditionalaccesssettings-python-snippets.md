---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.conditional_access_settings import ConditionalAccessSettings

graph_client = GraphServiceClient(credentials, scopes)

request_body = ConditionalAccessSettings(
	signaling_status = Status.Disabled,
	additional_data = {
			"@odata_context" : "https://graph.microsoft.com/beta/networkAccess/settings/$metadata#conditionalAccess",
	}
)

result = await graph_client.network_access.settings.conditional_access.patch(request_body)


```