---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.security.cases.ediscoverycases.item.noncustodialdatasources.microsoft_graph_security_apply_hold.apply_hold_post_request_body import ApplyHoldPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ApplyHoldPostRequestBody(
	ids = [
		"39333641443238353535383731453339",
		"46333131344239353834433430454335",
	],
)

await graph_client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').noncustodial_data_sources.microsoft_graph_security_apply_hold.post(request_body)


```