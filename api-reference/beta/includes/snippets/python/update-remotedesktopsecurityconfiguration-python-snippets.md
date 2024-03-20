---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.remote_desktop_security_configuration import RemoteDesktopSecurityConfiguration

graph_client = GraphServiceClient(credentials, scopes)

request_body = RemoteDesktopSecurityConfiguration(
	odata_type = "#microsoft.graph.remoteDesktopSecurityConfiguration",
	is_remote_desktop_protocol_enabled = True,
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').remote_desktop_security_configuration.patch(request_body)


```