---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.m365_apps_installation_options import M365AppsInstallationOptions

graph_client = GraphServiceClient(credentials, scopes)

request_body = M365AppsInstallationOptions(
	update_channel = AppsUpdateChannelType.Current,
)

result = await graph_client.admin.microsoft365_apps.installation_options.patch(request_body)


```