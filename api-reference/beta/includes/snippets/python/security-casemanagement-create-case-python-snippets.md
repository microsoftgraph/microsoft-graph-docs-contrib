---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.security.case_management.generic_case import GenericCase
from msgraph_beta.generated.models.security.case_management.custom_field_values import CustomFieldValues
from msgraph_beta.generated.models.security.case_management.custom_field_string_value import CustomFieldStringValue
from msgraph_beta.generated.models.security.case_management.custom_field_number_value import CustomFieldNumberValue
from msgraph_beta.generated.models.security.case_management.custom_field_date_time_value import CustomFieldDateTimeValue
from msgraph_beta.generated.models.security.case_management.custom_field_options_value import CustomFieldOptionsValue
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = GenericCase(
	odata_type = "#microsoft.graph.security.caseManagement.genericCase",
	display_name = "Security Breach Investigation",
	status = "active",
	description = "Investigating potential credential compromise.",
	assigned_to = "john.doe@contoso.com",
	priority = "high",
	custom_fields = CustomFieldValues(
		additional_data = {
				"customer impact" : {
						"@odata_type" : "#microsoft.graph.security.caseManagement.customFieldStringValue",
						"value" : "Executive mailbox affected",
				},
				"affected users" : {
						"@odata_type" : "#microsoft.graph.security.caseManagement.customFieldNumberValue",
						"value" : 12,
				},
				"review date" : {
						"@odata_type" : "#microsoft.graph.security.caseManagement.customFieldDateTimeValue",
						"value_date_time" : "2026-06-15T09:00:00Z",
				},
				"affected services" : {
						"@odata_type" : "#microsoft.graph.security.caseManagement.customFieldOptionsValue",
						"values" : [
							"Exchange Online",
							"Microsoft Teams",
						],
				},
		}
	),
)

result = await graph_client.security.case_management.cases.post(request_body)


```