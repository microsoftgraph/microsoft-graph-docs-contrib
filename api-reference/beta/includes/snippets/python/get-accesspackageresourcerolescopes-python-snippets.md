---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.identity_governance.entitlement_management.access_packages.item.access_package_item_request_builder import AccessPackageItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = AccessPackageItemRequestBuilder.AccessPackageItemRequestBuilderGetQueryParameters(
		expand = ["accessPackageResourceRoleScopes($expand=accessPackageResourceRole,accessPackageResourceScope)"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.entitlement_management.access_packages.by_access_package_id('accessPackage-id').get(request_configuration = request_configuration)


```