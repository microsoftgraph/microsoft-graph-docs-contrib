---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.education_school import EducationSchool
from msgraph_beta.generated.models.education_external_source import EducationExternalSource
from msgraph_beta.generated.models.physical_address import PhysicalAddress
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EducationSchool(
	display_name = "Fabrikam High School",
	description = "Magnate school for the arts. Los Angeles School District",
	external_source = EducationExternalSource.Sis,
	principal_email = "AmyR@fabrikam.com",
	principal_name = "Amy Roebuck",
	external_principal_id = "14007",
	highest_grade = "12",
	lowest_grade = "9",
	school_number = "10002",
	address = PhysicalAddress(
		city = "Los Angeles",
		country_or_region = "United States",
		postal_code = "98055",
		state = "CA",
		street = "12345 Main St.",
	),
	external_id = "10002",
	phone = "+1 (253) 555-0102",
)

result = await graph_client.education.schools.post(request_body)


```