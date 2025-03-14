---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.security.department_template import DepartmentTemplate
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DepartmentTemplate(
	odata_type = "#microsoft.graph.security.departmentTemplate",
	display_name = "Finance",
)

result = await graph_client.security.labels.departments.post(request_body)


```