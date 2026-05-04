---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.security.auto_auditing_configuration import AutoAuditingConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AutoAuditingConfiguration(
	odata_type = "#microsoft.graph.security.autoAuditingConfiguration",
	is_automatic = True,
)

result = await graph_client.security.identities.settings.auto_auditing_configuration.patch(request_body)


```