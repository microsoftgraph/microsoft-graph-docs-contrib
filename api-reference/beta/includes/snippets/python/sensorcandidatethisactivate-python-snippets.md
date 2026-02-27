---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.security.identities.sensorcandidates.microsoft_graph_security_activate.activate_post_request_body import ActivatePostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ActivatePostRequestBody(
	server_ids = [
		"c0633ebb-8cfb-f17a-0b9e-83aa661f53a3",
	],
)

await graph_client.security.identities.sensor_candidates.microsoft_graph_security_activate.post(request_body)


```