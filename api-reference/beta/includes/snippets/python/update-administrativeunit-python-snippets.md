---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = AdministrativeUnit(
	display_name = "Executive Division",
	additional_data = {
			"membership_type" : "Dynamic",
			"membership_rule" : "(user.country -eq \"United States\")",
			"membership_rule_processing_state" : "On",
	}
)

result = await graph_client.administrative_units.by_administrative_unit_id('administrativeUnit-id').patch(request_body)


```