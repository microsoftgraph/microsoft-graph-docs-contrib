---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.print_task_definition import PrintTaskDefinition
from msgraph_beta.generated.models.app_identity import AppIdentity
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PrintTaskDefinition(
	display_name = "Test TaskDefinitionName",
	created_by = AppIdentity(
		display_name = "Requesting App Display Name",
	),
)

result = await graph_client.print.task_definitions.by_print_task_definition_id('printTaskDefinition-id').patch(request_body)


```