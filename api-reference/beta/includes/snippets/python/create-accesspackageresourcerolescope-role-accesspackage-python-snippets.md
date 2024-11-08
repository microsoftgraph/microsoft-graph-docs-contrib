---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.access_package_resource_role_scope import AccessPackageResourceRoleScope
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AccessPackageResourceRoleScope(
	additional_data = {
			"role" : {
					"origin_id" : "Eligible",
					"display_name" : "Eligible Member",
					"origin_system" : "DirectoryRole",
					"resource" : {
							"id" : "ea036095-57a6-4c90-a640-013edf151eb1",
					},
			},
			"scope" : {
					"description" : "Root Scope",
					"display_name" : "Root",
					"is_root_scope" : True,
					"origin_system" : "DirectoryRole",
					"origin_id" : "c4e39bd9-1100-46d3-8c65-fb160da0071f",
			},
	}
)

result = await graph_client.identity_governance.entitlement_management.access_packages.by_access_package_id('accessPackage-id').access_package_resource_role_scopes.post(request_body)


```