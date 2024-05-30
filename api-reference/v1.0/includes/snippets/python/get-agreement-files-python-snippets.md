---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identity_governance.terms_of_use.agreements.item.agreement_item_request_builder import AgreementItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = AgreementItemRequestBuilder.AgreementItemRequestBuilderGetQueryParameters(
		expand = ["files"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.terms_of_use.agreements.by_agreement_id('agreement-id').get(request_configuration = request_configuration)


```