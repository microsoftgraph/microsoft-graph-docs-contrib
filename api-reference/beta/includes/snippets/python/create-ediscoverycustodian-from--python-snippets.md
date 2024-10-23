---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.security.ediscovery_custodian import EdiscoveryCustodian
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EdiscoveryCustodian(
	email = "AdeleV@contoso.com",
)

result = await graph_client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').custodians.post(request_body)


```