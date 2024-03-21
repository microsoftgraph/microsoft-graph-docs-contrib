---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.print.task_definitions.by_print_task_definition_id('printTaskDefinition-id').tasks.get()


```