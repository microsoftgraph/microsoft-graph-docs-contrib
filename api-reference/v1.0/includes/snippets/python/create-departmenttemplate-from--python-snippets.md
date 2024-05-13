---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.department_template import DepartmentTemplate

graph_client = GraphServiceClient(credentials, scopes)

request_body = DepartmentTemplate(
	odata_type = "#microsoft.graph.security.departmentTemplate",
	display_name = "Finance",
)

result = await graph_client.security.labels.departments.post(request_body)


```