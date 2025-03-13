---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.agreement import Agreement
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Agreement(
	display_name = "All Contoso volunteers - Terms of use",
	is_viewing_before_acceptance_required = True,
)

result = await graph_client.identity_governance.terms_of_use.agreements.by_agreement_id('agreement-id').patch(request_body)


```