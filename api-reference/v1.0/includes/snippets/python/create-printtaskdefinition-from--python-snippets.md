---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.print_task_definition import PrintTaskDefinition
from msgraph.generated.models.app_identity import AppIdentity
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PrintTaskDefinition(
	display_name = "Test TaskDefinitionName",
	created_by = AppIdentity(
		display_name = "Requesting App Display Name",
	),
)

result = await graph_client.print.task_definitions.post(request_body)


```