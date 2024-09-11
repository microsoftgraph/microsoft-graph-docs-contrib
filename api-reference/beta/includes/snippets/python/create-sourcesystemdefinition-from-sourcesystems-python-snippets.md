---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.industry_data.source_system_definition import SourceSystemDefinition
from msgraph_beta.generated.models.industry_data.user_matching_setting import UserMatchingSetting
from msgraph_beta.generated.models.industry_data.user_match_target_reference_value import UserMatchTargetReferenceValue
from msgraph_beta.generated.models.industry_data.identifier_type_reference_value import IdentifierTypeReferenceValue
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SourceSystemDefinition(
	display_name = "Rostering source",
	user_matching_settings = [
		UserMatchingSetting(
			match_target = UserMatchTargetReferenceValue(
				code = "userPrincipalName",
			),
			priority_order = 0,
			source_identifier = IdentifierTypeReferenceValue(
				code = "username",
			),
			additional_data = {
					"role_group@odata_bind" : "https://graph.microsoft.com/beta/external/industryData/roleGroups/staff",
			}
		),
		UserMatchingSetting(
			match_target = UserMatchTargetReferenceValue(
				code = "userPrincipalName",
			),
			priority_order = 1,
			source_identifier = IdentifierTypeReferenceValue(
				code = "username",
			),
			additional_data = {
					"role_group@odata_bind" : "https://graph.microsoft.com/beta/external/industryData/roleGroups('students')",
			}
		),
	],
)

result = await graph_client.external.industry_data.source_systems.post(request_body)


```