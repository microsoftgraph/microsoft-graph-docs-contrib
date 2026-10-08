---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.security.case_management.generic_case import GenericCase
from msgraph_beta.generated.models.security.case_management.custom_field_values import CustomFieldValues
from msgraph_beta.generated.models.security.case_management.custom_field_string_value import CustomFieldStringValue
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = GenericCase(
	odata_type = "#microsoft.graph.security.caseManagement.genericCase",
	display_name = "Case MS-001",
	status = "Open",
	description = "Investigating potential credential compromise.",
	assigned_to = "john.doe@contoso.com",
	priority = "high",
	due_date_time = "2026-06-29T17:54:43Z",
	closing_notes = "Follow up with the account owner.",
	custom_fields = CustomFieldValues(
		additional_data = {
				"customer impact" : {
						"@odata_type" : "#microsoft.graph.security.caseManagement.customFieldStringValue",
						"value" : "Multiple executive mailboxes affected",
				},
		}
	),
)

result = await graph_client.security.case_management.cases.by_case_id('case-id').patch(request_body)


```