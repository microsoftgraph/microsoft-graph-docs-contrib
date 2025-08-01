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
from msgraph_beta.generated.models.educational_activity_detail import EducationalActivityDetail
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EducationalActivity(
	completion_month_year = "Date",
	end_month_year = "Date",
	institution = InstitutionData(
		description = None,
		display_name = "Colorado State University",
		location = PhysicalAddress(
			type = PhysicalAddressType.Business,
			post_office_box = None,
			street = "12000 E Prospect Rd",
			city = "Fort Collins",
			state = "Colorado",
			country_or_region = "USA",
			postal_code = "80525",
		),
		web_url = "https://www.colostate.edu",
	),
	program = EducationalActivityDetail(
		abbreviation = "MBA",
		activities = None,
		awards = None,
		description = "Master of Business Administration with a major in Entreprenuership and Finance.",
		display_name = "Master of Business Administration",
		fields_of_study = None,
		grade = "3.9",
		notes = None,
		web_url = "https://biz.colostate.edu",
	),
	start_month_year = "Date",
)

result = await graph_client.me.profile.educational_activities.post(request_body)


```