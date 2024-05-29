---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.outlook_category import OutlookCategory
from msgraph_beta.generated.models.category_color import CategoryColor

graph_client = GraphServiceClient(credentials, scopes)

request_body = OutlookCategory(
	display_name = "Project expenses",
	color = CategoryColor.Preset9,
)

result = await graph_client.me.outlook.master_categories.post(request_body)


```