---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.ediscovery.noncustodial_data_source import NoncustodialDataSource
from msgraph_beta.generated.models.ediscovery.user_source import UserSource
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = NoncustodialDataSource(
	apply_hold_to_source = True,
	data_source = UserSource(
		odata_type = "microsoft.graph.ediscovery.userSource",
		email = "adelev@contoso.com",
	),
)

result = await graph_client.compliance.ediscovery.cases.by_case_id('case-id').noncustodial_data_sources.post(request_body)


```