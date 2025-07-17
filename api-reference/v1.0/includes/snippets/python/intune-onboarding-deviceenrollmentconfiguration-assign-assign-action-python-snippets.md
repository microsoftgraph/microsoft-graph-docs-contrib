---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.devicemanagement.deviceenrollmentconfigurations.item.assign.assign_post_request_body import AssignPostRequestBody
from msgraph.generated.models.enrollment_configuration_assignment import EnrollmentConfigurationAssignment
from msgraph.generated.models.configuration_manager_collection_assignment_target import ConfigurationManagerCollectionAssignmentTarget
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AssignPostRequestBody(
	enrollment_configuration_assignments = [
		EnrollmentConfigurationAssignment(
			odata_type = "#microsoft.graph.enrollmentConfigurationAssignment",
			id = "705b021c-021c-705b-1c02-5b701c025b70",
			target = ConfigurationManagerCollectionAssignmentTarget(
				odata_type = "microsoft.graph.configurationManagerCollectionAssignmentTarget",
				collection_id = "Collection Id value",
			),
		),
	],
)

await graph_client.device_management.device_enrollment_configurations.by_device_enrollment_configuration_id('deviceEnrollmentConfiguration-id').assign.post(request_body)


```