---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = RedirectPostRequestBody(
	targets = [
		InvitationParticipantInfo(
			odata_type = "#microsoft.graph.invitationParticipantInfo",
			identity = IdentitySet(
				odata_type = "#microsoft.graph.identitySet",
				application = Identity(
					odata_type = "#microsoft.graph.identity",
					display_name = "test bot 2",
					id = "22bfd41f-550e-477d-8789-f6f7bd2a5e8b",
				),
			),
		),
	]
	callback_uri = "https://bot.contoso.com/api/calls/24701998-1a73-4d42-8085-bf46ed0ae039",
)

await graph_client.communications.calls.by_call_id('call-id').redirect.post(request_body = request_body)


```