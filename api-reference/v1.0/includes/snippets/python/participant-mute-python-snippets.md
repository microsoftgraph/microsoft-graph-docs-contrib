---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.communications.calls.item.participants.item.mute.mute_post_request_body import MutePostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = MutePostRequestBody(
	client_context = "d45324c1-fcb5-430a-902c-f20af696537c",
)

result = await graph_client.communications.calls.by_call_id('call-id').participants.by_participant_id('participant-id').mute.post(request_body)


```