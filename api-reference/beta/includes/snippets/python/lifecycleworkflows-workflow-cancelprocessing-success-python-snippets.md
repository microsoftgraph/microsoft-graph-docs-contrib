---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.identitygovernance.lifecycleworkflows.workflows.item.microsoft_graph_identity_governance_cancel_processing.cancel_processing_post_request_body import CancelProcessingPostRequestBody
from msgraph_beta.generated.models.identity_governance.cancel_runs_scope import CancelRunsScope
from msgraph_beta.generated.models.identity_governance.run import Run
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CancelProcessingPostRequestBody(
	scope = CancelRunsScope(
		odata_type = "#microsoft.graph.identityGovernance.cancelRunsScope",
		runs = [
			Run(
				id = "8cdf25a8-c9d2-423e-a03d-3f39f03c3e97",
			),
		],
	),
)

await graph_client.identity_governance.lifecycle_workflows.workflows.by_workflow_id('workflow-id').microsoft_graph_identity_governance_cancel_processing.post(request_body)


```