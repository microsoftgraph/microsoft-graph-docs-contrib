---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.check_in_claim import CheckInClaim
from msgraph_beta.generated.models.check_in_method import CheckInMethod
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CheckInClaim(
	odata_type = "#microsoft.graph.checkInClaim",
	calendar_event_id = "040000008200E00074C5B7101A82E00800000000D02AC02D26EFDB010000000000000000100000005A18ADA04F0A24489AE13ED3CC367978",
	check_in_method = CheckInMethod.Verified,
)

result = await graph_client.places.by_place_id('place-id').check_ins.post(request_body)


```