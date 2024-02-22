---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.education_class import EducationClass
from msgraph.generated.models.identity_set import IdentitySet
from msgraph.generated.models.education_term import EducationTerm

graph_client = GraphServiceClient(credentials, scopes)

request_body = EducationClass(
	odata_type = "#microsoft.graph.educationClass",
	display_name = "String",
	mail_nickname = "String",
	description = "String",
	created_by = IdentitySet(
		odata_type = "microsoft.graph.identitySet",
	),
	class_code = "String",
	external_name = "String",
	external_id = "String",
	external_source = EducationExternalSource.Sis,
	external_source_detail = "String",
	grade = "String",
	term = EducationTerm(
		odata_type = "microsoft.graph.educationTerm",
	),
)

result = await graph_client.education.classes.post(request_body)


```