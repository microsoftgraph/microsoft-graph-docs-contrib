---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.exchange_restore_session import ExchangeRestoreSession

graph_client = GraphServiceClient(credentials, scopes)

request_body = ExchangeRestoreSession(
	odata_type = "#microsoft.graph.exchangeRestoreSession",
	additional_data = {
			"granular_mailbox_restore_artifacts" : [
				{
						"restore_point" : {
								"@odata_id" : "1f1fccc3-a642-4f61-bf49-f37b9a888279",
						},
						"destination_type" : "inPlace",
						"search_response_id" : "M2UyZDAwMDAwMDMxMzkzYTMyNj",
				},
			],
	}
)

result = await graph_client.solutions.backup_restore.exchange_restore_sessions.post(request_body)


```