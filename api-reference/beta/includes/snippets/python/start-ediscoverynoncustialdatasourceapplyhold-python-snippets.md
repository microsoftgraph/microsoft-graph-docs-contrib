---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.security.cases.ediscoverycases.item.noncustodialdatasources.microsoft_graph_security_apply_hold.apply_hold_post_request_body import ApplyHoldPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = ApplyHoldPostRequestBody(
	ids = [
		"39333641443238353535383731453339",
		"46333131344239353834433430454335",
	],
)

await graph_client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').noncustodial_data_sources.microsoft_graph_security_apply_hold.post(request_body)


```