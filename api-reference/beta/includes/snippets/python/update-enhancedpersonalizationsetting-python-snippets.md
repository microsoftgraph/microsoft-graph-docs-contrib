---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.enhanced_personalization_setting import EnhancedPersonalizationSetting
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EnhancedPersonalizationSetting(
	is_enabled_in_organization = True,
	disabled_for_group = "edbfe4fb-ec70-4300-928f-dbb2ae86c981",
)

result = await graph_client.copilot.settings.people.enhanced_personalization.patch(request_body)


```