---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.education_school import EducationSchool
from msgraph.generated.models.education_external_source import EducationExternalSource
from msgraph.generated.models.identity_set import IdentitySet
from msgraph.generated.models.physical_address import PhysicalAddress
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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