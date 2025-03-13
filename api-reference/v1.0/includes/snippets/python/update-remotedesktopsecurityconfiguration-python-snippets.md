---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.remote_desktop_security_configuration import RemoteDesktopSecurityConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = RemoteDesktopSecurityConfiguration(
	odata_type = "#microsoft.graph.remoteDesktopSecurityConfiguration",
	is_remote_desktop_protocol_enabled = True,
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').remote_desktop_security_configuration.patch(request_body)


```