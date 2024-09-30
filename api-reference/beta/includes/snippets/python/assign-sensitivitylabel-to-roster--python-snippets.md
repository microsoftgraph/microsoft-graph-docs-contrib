---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.planner.rosters.item.assign_sensitivity_label.assign_sensitivity_label_request_builder import AssignSensitivityLabelRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from msgraph_beta.generated.planner.rosters.item.assign_sensitivity_label.assign_sensitivity_label_post_request_body import AssignSensitivityLabelPostRequestBody
from msgraph_beta.generated.models.sensitivity_label_assignment_method import SensitivityLabelAssignmentMethod
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AssignSensitivityLabelPostRequestBody(
	assignment_method = SensitivityLabelAssignmentMethod.Standard,
	sensitivity_label_id = "7a4d7cc1-f72b-46a3-9831-02680eaf56f9",
)

request_configuration = RequestConfiguration()
request_configuration.headers.add("If-Match", "\"W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"\"")


result = await graph_client.planner.rosters.by_planner_roster_id('plannerRoster-id').assign_sensitivity_label.post(request_body, request_configuration = request_configuration)


```