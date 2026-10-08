---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.drives.item.items.item.assign_sensitivity_label.assign_sensitivity_label_post_request_body import AssignSensitivityLabelPostRequestBody
from msgraph_beta.generated.models.sensitivity_label_assignment_method import SensitivityLabelAssignmentMethod
from msgraph_beta.generated.models.user_identity import UserIdentity
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AssignSensitivityLabelPostRequestBody(
	sensitivity_label_id = "5feba255-812e-446a-ac59-a7044ef827b5",
	assignment_method = SensitivityLabelAssignmentMethod.Standard,
	justification_text = "test_justification",
	applied_by_user = UserIdentity(
		user_principal_name = "adelev@contoso.com",
	),
)

await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').assign_sensitivity_label.post(request_body)


```