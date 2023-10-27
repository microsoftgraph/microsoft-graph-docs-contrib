---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = SourceSystemDefinition(
	vendor = "LMS Vendor",
)

result = await graph_client.external.industry_data.source_systems.by_source_system_definition_id('sourceSystemDefinition-id').patch(request_body)


```