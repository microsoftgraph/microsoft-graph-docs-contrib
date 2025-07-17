---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.ediscovery.custodian import Custodian
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Custodian(
	email = "AdeleV@contoso.com",
	apply_hold_to_sources = True,
)

result = await graph_client.compliance.ediscovery.cases.by_case_id('case-id').custodians.post(request_body)


```