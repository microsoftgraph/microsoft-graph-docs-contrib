---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.identity_governance.entitlement_management.access_package_assignment_policies.item.access_package_assignment_policy_item_request_builder import AccessPackageAssignmentPolicyItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = AccessPackageAssignmentPolicyItemRequestBuilder.AccessPackageAssignmentPolicyItemRequestBuilderGetQueryParameters(
		expand = ["customExtensionHandlers($expand=customExtension)"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.entitlement_management.access_package_assignment_policies.by_access_package_assignment_policy_id('accessPackageAssignmentPolicy-id').get(request_configuration = request_configuration)


```