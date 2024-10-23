---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.identity_governance.entitlement_management.access_package_assignment_policies.item.access_package_assignment_policy_item_request_builder import AccessPackageAssignmentPolicyItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = AccessPackageAssignmentPolicyItemRequestBuilder.AccessPackageAssignmentPolicyItemRequestBuilderGetQueryParameters(
		expand = ["customExtensionStageSettings($expand=customExtension)"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.entitlement_management.access_package_assignment_policies.by_access_package_assignment_policy_id('accessPackageAssignmentPolicy-id').get(request_configuration = request_configuration)


```