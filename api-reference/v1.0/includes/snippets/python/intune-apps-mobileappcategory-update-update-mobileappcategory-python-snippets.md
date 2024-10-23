---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.mobile_app_category import MobileAppCategory
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = MobileAppCategory(
	odata_type = "#microsoft.graph.mobileAppCategory",
	display_name = "Display Name value",
)

result = await graph_client.device_app_management.mobile_app_categories.by_mobile_app_category_id('mobileAppCategory-id').patch(request_body)


```