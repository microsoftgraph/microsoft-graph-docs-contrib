---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.approved_client_app import ApprovedClientApp
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ApprovedClientApp(
	odata_type = "#microsoft.graph.approvedClientApp",
	id = "cd57c330-a543-4249-9486-c1c257341de6",
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').remote_desktop_security_configuration.approved_client_apps.post(request_body)


```