---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.identitygovernance.entitlementmanagement.accesspackages.item.move_to_catalog.move_to_catalog_post_request_body import MoveToCatalogPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = MoveToCatalogPostRequestBody(
	catalog_id = "3301434b-99bd-46be-923b-d762c30c8e8b",
)

await graph_client.identity_governance.entitlement_management.access_packages.by_access_package_id('accessPackage-id').move_to_catalog.post(request_body)


```