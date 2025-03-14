---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.identitygovernance.entitlementmanagement.accesspackageassignmentrequests.item.cancel.cancel_post_request_body import CancelPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CancelPostRequestBody(
	additional_data = {
			"id" : "request-id",
			"request_status" : "cancelled",
	}
)

await graph_client.identity_governance.entitlement_management.access_package_assignment_requests.by_access_package_assignment_request_id('accessPackageAssignmentRequest-id').cancel.post(request_body)


```