---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.noncustodial_data_source import NoncustodialDataSource
from msgraph.generated.models.user_source import UserSource

graph_client = GraphServiceClient(credentials, scopes)

request_body = NoncustodialDataSource(
	apply_hold_to_source = True,
	data_source = UserSource(
		odata_type = "microsoft.graph.ediscovery.userSource",
		email = "adelev@contoso.com",
	),
)

result = await graph_client.compliance.ediscovery.cases.by_case_id('case-id').noncustodial_data_sources.post(request_body)


```