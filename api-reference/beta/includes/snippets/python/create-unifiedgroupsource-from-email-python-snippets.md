---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.ediscovery.unified_group_source import UnifiedGroupSource
from msgraph_beta.generated.models.group import Group
from msgraph_beta.generated.models.source_type import SourceType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = UnifiedGroupSource(
	group = Group(
		mail = "SecretGroup@contoso.com",
	),
	included_sources = SourceType.Mailbox | SourceType.Site,
)

result = await graph_client.compliance.ediscovery.cases.by_case_id('case-id').custodians.by_custodian_id('custodian-id').unified_group_sources.post(request_body)


```