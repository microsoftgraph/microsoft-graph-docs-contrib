---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.security.subcategory_template import SubcategoryTemplate
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SubcategoryTemplate(
	odata_type = "#microsoft.graph.security.subcategoryTemplate",
	display_name = "Vendor Invoice",
)

result = await graph_client.security.labels.categories.by_category_template_id('categoryTemplate-id').subcategories.post(request_body)


```