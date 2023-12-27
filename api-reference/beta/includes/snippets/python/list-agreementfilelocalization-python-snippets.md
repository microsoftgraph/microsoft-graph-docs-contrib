---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = AgreementItemRequestBuilder.AgreementItemRequestBuilderGetQueryParameters(
		expand = ["files"],
)

request_configuration = AgreementItemRequestBuilder.AgreementItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.terms_of_use.agreements.by_agreement_id('agreement-id').get(request_configuration = request_configuration)


```