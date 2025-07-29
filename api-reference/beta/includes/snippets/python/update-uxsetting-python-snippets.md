---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.ux_setting import UxSetting
from msgraph_beta.generated.models.non_admin_setting import NonAdminSetting
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = UxSetting(
	restrict_non_admin_access = NonAdminSetting.True,
)

result = await graph_client.admin.entra.ux_setting.patch(request_body)


```