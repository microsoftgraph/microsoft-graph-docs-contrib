---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.department_template import DepartmentTemplate
from msgraph.generated.models.identity_set import IdentitySet

graph_client = GraphServiceClient(credentials, scopes)

request_body = DepartmentTemplate(
	odata_type = "#microsoft.graph.security.departmentTemplate",
	display_name = "String",
	created_by = IdentitySet(
		odata_type = "microsoft.graph.identitySet",
	),
)

result = await graph_client.security.labels.departments.post(request_body)


```