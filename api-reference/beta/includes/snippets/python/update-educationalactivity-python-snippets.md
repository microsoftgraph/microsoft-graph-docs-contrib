---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.educational_activity import EducationalActivity
from msgraph_beta.generated.models.institution_data import InstitutionData
from msgraph_beta.generated.models.physical_address import PhysicalAddress
from msgraph_beta.generated.models.physical_address_type import PhysicalAddressType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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