---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.identity_governance.lifecycle_workflows.workflows.by_workflow_id('workflow-id').user_processing_results.by_user_processing_result_id('userProcessingResult-id').task_processing_results.get()


```