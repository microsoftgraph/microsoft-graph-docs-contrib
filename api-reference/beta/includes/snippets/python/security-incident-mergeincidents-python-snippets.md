---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.security.incidents.microsoft_graph_security_merge_incidents.merge_incidents_post_request_body import MergeIncidentsPostRequestBody
from msgraph_beta.generated.models.correlation_reason import CorrelationReason
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = MergeIncidentsPostRequestBody(
	incident_ids = [
		"2972395",
		"2972396",
	],
	incident_comment = "Merging related incidents from the same campaign",
	merge_reasons = CorrelationReason.SameCampaign | CorrelationReason.SameActor,
)

result = await graph_client.security.incidents.microsoft_graph_security_merge_incidents.post(request_body)


```