---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.networkaccess.conditional_access_settings import ConditionalAccessSettings
from msgraph_beta.generated.models.status import Status
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ConditionalAccessSettings(
	signaling_status = Status.Disabled,
	additional_data = {
			"@odata_context" : "https://graph.microsoft.com/beta/networkAccess/settings/$metadata#conditionalAccess",
	}
)

result = await graph_client.network_access.settings.conditional_access.patch(request_body)


```