---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.work_position import WorkPosition
from msgraph_beta.generated.models.position_detail import PositionDetail
from msgraph_beta.generated.models.company_detail import CompanyDetail
from msgraph_beta.generated.models.physical_address import PhysicalAddress
from msgraph_beta.generated.models.physical_address_type import PhysicalAddressType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = WorkPosition(
	detail = PositionDetail(
		company = CompanyDetail(
			display_name = "Adventureworks Ltd.",
			department = "Consulting",
			office_location = "AW23/344",
			address = PhysicalAddress(
				type = PhysicalAddressType.Business,
				street = "123 Patriachy Ponds",
				city = "Moscow",
				country_or_region = "Russian Federation",
				postal_code = "RU-34621",
			),
			web_url = "https://www.adventureworks.com",
		),
		job_title = "Senior Product Branding Manager II",
		role = "consulting",
	),
	is_current = True,
)

result = await graph_client.me.profile.positions.post(request_body)


```