---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = AdministrativeUnit(
	display_name = "Seattle District Technical Schools",
	description = "Seattle district technical schools administration",
	additional_data = {
			"membership_type" : "Dynamic",
			"membership_rule" : "(user.country -eq \"United States\")",
			"membership_rule_processing_state" : "On",
	}
)

result = await graph_client.administrative_units.post(request_body)


```