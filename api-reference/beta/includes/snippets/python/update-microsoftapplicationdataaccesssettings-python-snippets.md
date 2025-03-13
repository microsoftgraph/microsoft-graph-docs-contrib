---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.microsoft_application_data_access_settings import MicrosoftApplicationDataAccessSettings
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = MicrosoftApplicationDataAccessSettings(
	disabled_for_group = "edbfe4fb-ec70-4300-928f-dbb2ae86c981",
)

result = await graph_client.organization.by_organization_id('organization-id').settings.microsoft_application_data_access.patch(request_body)


```