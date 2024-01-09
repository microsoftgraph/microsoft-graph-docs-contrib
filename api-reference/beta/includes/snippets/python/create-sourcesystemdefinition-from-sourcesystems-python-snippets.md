---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

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