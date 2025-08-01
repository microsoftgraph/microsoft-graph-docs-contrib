---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.identity_governance.workflow import Workflow
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Workflow(
	description = "Configure new hire tasks for onboarding employees on their first day",
	display_name = "Australia Onboard new hire employee",
	is_enabled = True,
	is_scheduling_enabled = False,
)

result = await graph_client.identity_governance.lifecycle_workflows.workflows.by_workflow_id('workflow-id').patch(request_body)


```