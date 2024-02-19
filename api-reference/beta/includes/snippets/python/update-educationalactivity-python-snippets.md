---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.educational_activity import EducationalActivity
from msgraph.generated.models.institution_data import InstitutionData
from msgraph.generated.models.physical_address import PhysicalAddress

graph_client = GraphServiceClient(credentials, scopes)

request_body = EducationalActivity(
	institution = InstitutionData(
		location = PhysicalAddress(
			type = PhysicalAddressType.Business,
			post_office_box = None,
			street = "12000 E Prospect Rd",
			city = "Fort Collins",
			state = "Colorado",
			country_or_region = "USA",
			postal_code = "80525",
		),
	),
)

result = await graph_client.me.profile.educational_activities.by_educational_activity_id('educationalActivity-id').patch(request_body)


```