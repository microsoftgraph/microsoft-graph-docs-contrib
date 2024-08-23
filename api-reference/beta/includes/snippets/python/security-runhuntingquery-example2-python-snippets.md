---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.security.microsoft_graph_security_run_hunting_query.run_hunting_query_post_request_body import RunHuntingQueryPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = RunHuntingQueryPostRequestBody(
	query = "DeviceProcessEvents",
	timespan = "P90D",
)

result = await graph_client.security.microsoft_graph_security_run_hunting_query.post(request_body)


```