---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.work_position import WorkPosition
from msgraph.generated.models.position_detail import PositionDetail
from msgraph.generated.models.company_detail import CompanyDetail
from msgraph.generated.models.physical_address import PhysicalAddress

graph_client = GraphServiceClient(credentials, scopes)

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