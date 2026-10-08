---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.identitygovernance.lifecycleworkflows.workflows.item.microsoft_graph_identity_governance_activate_and_wait.activate_and_wait_post_request_body import ActivateAndWaitPostRequestBody
from msgraph_beta.generated.models.identity_governance.provisioning_object_workflow_subject import ProvisioningObjectWorkflowSubject
from msgraph_beta.generated.models.identity_governance.attribute_set_entry import AttributeSetEntry
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ActivateAndWaitPostRequestBody(
	subject = ProvisioningObjectWorkflowSubject(
		odata_type = "#microsoft.graph.identityGovernance.provisioningObjectWorkflowSubject",
		id = "b74f0fae-b1f3-4c96-9bf0-d4d8a8e37cbe",
		attribute_set_entries = [
			AttributeSetEntry(
				name = "department",
				value = "Engineering",
			),
			AttributeSetEntry(
				name = "jobTitle",
				value = "Software Engineer",
			),
		],
	),
)

result = await graph_client.identity_governance.lifecycle_workflows.workflows.by_workflow_id('workflow-id').microsoft_graph_identity_governance_activate_and_wait.post(request_body)


```