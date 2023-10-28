---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = TransferPostRequestBody(
	transfer_target = InvitationParticipantInfo(
		endpoint_type = EndpointType.Default,
		identity = IdentitySet(
			additional_data = {
					"phone" : {
							"@odata_type" : "#microsoft.graph.identity",
							"id" : "+12345678901",
					},
			}
		),
		additional_data = {
				"language_id" : "languageId-value",
				"region" : "region-value",
		}
	),
)

await graph_client.communications.calls.by_call_id('call-id').transfer.post(request_body)


```