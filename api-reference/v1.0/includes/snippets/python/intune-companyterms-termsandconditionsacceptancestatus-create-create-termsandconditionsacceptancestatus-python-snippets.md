---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.terms_and_conditions_acceptance_status import TermsAndConditionsAcceptanceStatus
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = TermsAndConditionsAcceptanceStatus(
	odata_type = "#microsoft.graph.termsAndConditionsAcceptanceStatus",
	user_display_name = "User Display Name value",
	accepted_version = 15,
	accepted_date_time = "2016-12-31T23:57:43.6165506-08:00",
	user_principal_name = "User Principal Name value",
)

result = await graph_client.device_management.terms_and_conditions.by_terms_and_conditions_id('termsAndConditions-id').acceptance_statuses.post(request_body)


```