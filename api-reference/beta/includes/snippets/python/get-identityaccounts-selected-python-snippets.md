---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.security.identities.identity_accounts.item.identity_accounts_item_request_builder import IdentityAccountsItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = IdentityAccountsItemRequestBuilder.IdentityAccountsItemRequestBuilderGetQueryParameters(
		select = ["accounts"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.security.identities.identity_accounts.by_identity_accounts_id('identityAccounts-id').get(request_configuration = request_configuration)


```