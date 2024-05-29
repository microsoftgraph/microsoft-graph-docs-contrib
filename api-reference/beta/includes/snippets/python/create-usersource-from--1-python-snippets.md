---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.ediscovery.user_source import UserSource
from msgraph_beta.generated.models.source_type import SourceType

graph_client = GraphServiceClient(credentials, scopes)

request_body = UserSource(
	email = "megan@contoso.com",
	included_sources = SourceType.Mailbox | SourceType.Site,
)

result = await graph_client.compliance.ediscovery.cases.by_case_id('case-id').custodians.by_custodian_id('custodian-id').user_sources.post(request_body)


```