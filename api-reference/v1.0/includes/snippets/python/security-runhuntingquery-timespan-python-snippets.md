---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.security.microsoft_graph_security_run_hunting_query.run_hunting_query_post_request_body import RunHuntingQueryPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = RunHuntingQueryPostRequestBody(
	query = "DeviceProcessEvents",
	timespan = "P90D",
)

result = await graph_client.security.microsoft_graph_security_run_hunting_query.post(request_body)


```