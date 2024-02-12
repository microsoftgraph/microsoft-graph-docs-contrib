---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.education_school import EducationSchool
from msgraph.generated.models.physical_address import PhysicalAddress

graph_client = GraphServiceClient(credentials, scopes)

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