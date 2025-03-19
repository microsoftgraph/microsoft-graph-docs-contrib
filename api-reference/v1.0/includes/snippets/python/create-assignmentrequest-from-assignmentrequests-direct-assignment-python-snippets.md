---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.access_package_assignment_request import AccessPackageAssignmentRequest
from msgraph.generated.models.access_package_request_type import AccessPackageRequestType
from msgraph.generated.models.access_package_assignment import AccessPackageAssignment
from msgraph.generated.models.access_package_subject import AccessPackageSubject
from msgraph.generated.models.access_package_assignment_policy import AccessPackageAssignmentPolicy
from msgraph.generated.models.access_package import AccessPackage
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AccessPackageAssignmentRequest(
	request_type = AccessPackageRequestType.AdminAdd,
	assignment = AccessPackageAssignment(
		target = AccessPackageSubject(
			email = "user@contoso.com",
		),
		assignment_policy = AccessPackageAssignmentPolicy(
			id = "11114b50-0a08-4f96-83e9-1d714aa2cd79",
		),
		access_package = AccessPackage(
			id = "11115C72-0612-4C43-A044-FC0A4E71A4C5",
		),
	),
)

result = await graph_client.identity_governance.entitlement_management.assignment_requests.post(request_body)


```