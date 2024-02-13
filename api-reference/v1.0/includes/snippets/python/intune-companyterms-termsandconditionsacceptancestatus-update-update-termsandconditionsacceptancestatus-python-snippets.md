---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.terms_and_conditions_acceptance_status import TermsAndConditionsAcceptanceStatus

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