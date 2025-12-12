---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.security.identities.identity_accounts.identity_accounts_request_builder import IdentityAccountsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = IdentityAccountsRequestBuilder.IdentityAccountsRequestBuilderGetQueryParameters(
		filter = "onPremisesSecurityIdentifier eq 'S-1-5-21-989687458-3461180213-172365591-281652'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.security.identities.identity_accounts.get(request_configuration = request_configuration)


```