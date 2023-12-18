---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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