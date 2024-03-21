---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.education_user import EducationUser
from msgraph.generated.models.identity_set import IdentitySet
from msgraph.generated.models.identity import Identity
from msgraph.generated.models.physical_address import PhysicalAddress

graph_client = GraphServiceClient(credentials, scopes)

request_body = EducationUser(
	display_name = "Dion Matheson",
	given_name = "Dion",
	middle_name = None,
	surname = "Matheson",
	mail = "DionM@contoso.com",
	mobile_phone = "+1 (253) 555-0101",
	created_by = IdentitySet(
		user = Identity(
			display_name = "Susana Rocha",
			id = "14012",
		),
	),
	external_source = EducationExternalSource.Sis,
	mailing_address = PhysicalAddress(
		city = "Los Angeles",
		country_or_region = "United States",
		postal_code = "98055",
		state = "CA",
		street = "12345 Main St.",
	),
	primary_role = EducationUserRole.Student,
	residence_address = PhysicalAddress(
		city = "Los Angeles",
		country_or_region = "United States",
		postal_code = "98055",
		state = "CA",
		street = "12345 Main St.",
	),
)

result = await graph_client.education.users.post(request_body)


```