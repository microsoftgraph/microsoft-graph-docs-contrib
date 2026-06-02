---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.identitygovernance.lifecycleworkflows.workflows.item.microsoft_graph_identity_governance_preview_workflow.preview_workflow_post_request_body import PreviewWorkflowPostRequestBody
from msgraph_beta.generated.models.directory_object import DirectoryObject
from msgraph_beta.generated.models.user import User
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PreviewWorkflowPostRequestBody(
	subjects = [
		User(
			odata_type = "#microsoft.graph.user",
			id = "b59552b8-fa7b-4f68-8496-0a529aace8c0",
		),
		User(
			odata_type = "#microsoft.graph.user",
			id = "a1b2c3d4-e5f6-7890-abcd-ef1234567890",
		),
	],
)

await graph_client.identity_governance.lifecycle_workflows.workflows.by_workflow_id('workflow-id').microsoft_graph_identity_governance_preview_workflow.post(request_body)


```