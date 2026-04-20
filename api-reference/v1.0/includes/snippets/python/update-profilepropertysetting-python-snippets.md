---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.profile_property_setting import ProfilePropertySetting
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ProfilePropertySetting(
	odata_type = "#microsoft.graph.profilePropertySetting",
	prioritized_source_urls = [
		"https://graph.microsoft.com/v1.0/admin/people/profileSources(sourceId='contosohr1')",
		"https://graph.microsoft.com/v1.0/admin/people/profileSources(sourceId='contosohr2')",
	],
)

result = await graph_client.admin.people.profile_property_settings.by_profile_property_setting_id('profilePropertySetting-id').patch(request_body)


```