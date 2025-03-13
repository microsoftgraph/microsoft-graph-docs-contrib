---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.terms_and_conditions import TermsAndConditions
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = TermsAndConditions(
	odata_type = "#microsoft.graph.termsAndConditions",
	display_name = "Display Name value",
	description = "Description value",
	title = "Title value",
	body_text = "Body Text value",
	acceptance_statement = "Acceptance Statement value",
	version = 7,
)

result = await graph_client.device_management.terms_and_conditions.by_terms_and_conditions_id('termsAndConditions-id').patch(request_body)


```