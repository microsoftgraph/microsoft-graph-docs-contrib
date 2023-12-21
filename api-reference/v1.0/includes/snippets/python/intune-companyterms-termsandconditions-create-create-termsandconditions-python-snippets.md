---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = TermsAndConditions(
	odata_type = "#microsoft.graph.termsAndConditions",
	display_name = "Display Name value",
	description = "Description value",
	title = "Title value",
	body_text = "Body Text value",
	acceptance_statement = "Acceptance Statement value",
	version = 7,
)

result = await graph_client.device_management.terms_and_conditions.post(request_body)


```