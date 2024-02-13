---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.agreement import Agreement

graph_client = GraphServiceClient(credentials, scopes)

request_body = Agreement(
	display_name = "All Contoso volunteers - Terms of use",
	is_viewing_before_acceptance_required = True,
)

result = await graph_client.identity_governance.terms_of_use.agreements.by_agreement_id('agreement-id').patch(request_body)


```