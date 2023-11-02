---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = TermsAndConditionsAcceptanceStatus(
	odata_type = "#microsoft.graph.termsAndConditionsAcceptanceStatus",
	user_display_name = "User Display Name value",
	accepted_version = 15,
	accepted_date_time = "2016-12-31T23:57:43.6165506-08:00",
	user_principal_name = "User Principal Name value",
)

result = await graph_client.device_management.terms_and_conditions.by_terms_and_conditions_id('termsAndConditions-id').acceptance_statuses.by_terms_and_conditions_acceptance_status_id('termsAndConditionsAcceptanceStatus-id').patch(request_body)


```