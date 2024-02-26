---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.microsoft_application_data_access_settings import MicrosoftApplicationDataAccessSettings

graph_client = GraphServiceClient(credentials, scopes)

request_body = MicrosoftApplicationDataAccessSettings(
	disabled_for_group = "edbfe4fb-ec70-4300-928f-dbb2ae86c981",
)

result = await graph_client.organization.by_organization_id('organization-id').settings.microsoft_application_data_access.patch(request_body)


```