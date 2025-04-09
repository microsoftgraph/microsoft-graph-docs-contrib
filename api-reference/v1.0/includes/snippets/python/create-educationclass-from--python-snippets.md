---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.education_class import EducationClass
from msgraph.generated.models.identity_set import IdentitySet
from msgraph.generated.models.education_external_source import EducationExternalSource
from msgraph.generated.models.education_term import EducationTerm
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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