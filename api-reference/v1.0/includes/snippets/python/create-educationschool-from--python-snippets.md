---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = EducationSchool(
	odata_type = "#microsoft.graph.educationSchool",
	display_name = "String",
	description = "String",
	external_source = EducationExternalSource.Sis,
	external_source_detail = "String",
	principal_email = "String",
	principal_name = "String",
	external_principal_id = "String",
	lowest_grade = "String",
	highest_grade = "String",
	school_number = "String",
	external_id = "String",
	phone = "String",
	fax = "String",
	created_by = IdentitySet(
		odata_type = "microsoft.graph.identitySet",
	),
	address = PhysicalAddress(
		odata_type = "microsoft.graph.physicalAddress",
	),
)

result = await graph_client.education.schools.post(request_body)


```