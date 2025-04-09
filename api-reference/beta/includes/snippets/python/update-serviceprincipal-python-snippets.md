---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.service_principal import ServicePrincipal
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ServicePrincipal(
	app_role_assignment_required = True,
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').patch(request_body)


```