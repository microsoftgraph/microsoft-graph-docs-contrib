---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.identity_governance.lifecycle_workflows.workflow_templates.by_workflow_template_id('workflowTemplate-id').get()


```