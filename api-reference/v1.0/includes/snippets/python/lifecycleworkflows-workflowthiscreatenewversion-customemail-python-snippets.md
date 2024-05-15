---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identitygovernance.lifecycleworkflows.workflows.item.microsoft_graph_identity_governance_create_new_version.create_new_version_post_request_body import CreateNewVersionPostRequestBody
from msgraph.generated.models.trigger_and_scope_based_conditions import TriggerAndScopeBasedConditions
from msgraph.generated.models.rule_based_subject_set import RuleBasedSubjectSet
from msgraph.generated.models.time_based_attribute_trigger import TimeBasedAttributeTrigger

graph_client = GraphServiceClient(credentials, scopes)

request_body = CreateNewVersionPostRequestBody(
	additional_data = {
			"category" : "joiner",
			"description" : "Configure new hire tasks for onboarding employees on their first day",
			"display_name" : "custom email marketing API test",
			"is_enabled" : True,
			"is_scheduling_enabled" : False,
			"execution_conditions" : {
					"@odata_type" : "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
					"scope" : {
							"@odata_type" : "#microsoft.graph.identityGovernance.ruleBasedSubjectSet",
							"rule" : "(department eq 'Marketing')",
					},
					"trigger" : {
							"@odata_type" : "#microsoft.graph.identityGovernance.timeBasedAttributeTrigger",
							"time_based_attribute" : WorkflowTriggerTimeBasedAttribute.EmployeeHireDate,
							"offset_in_days" : 0,
					},
			},
			"tasks" : [
				{
						"continue_on_error" : False,
						"description" : "Enable user account in the directory",
						"display_name" : "Enable User Account",
						"is_enabled" : True,
						"task_definition_id" : "6fc52c9d-398b-4305-9763-15f42c1676fc",
						"arguments" : [
						],
				},
				{
						"continue_on_error" : False,
						"description" : "Send welcome email to new hire",
						"display_name" : "Send Welcome Email",
						"is_enabled" : True,
						"task_definition_id" : "70b29d51-b59a-4773-9280-8841dfd3f2ea",
						"arguments" : [
							{
									"name" : "cc",
									"value" : "1baa57fa-3c4e-4526-ba5a-db47a9df95f0",
							},
							{
									"name" : "customSubject",
									"value" : "Welcome to the organization {{userDisplayName}}!",
							},
							{
									"name" : "customBody",
									"value" : "Welcome to our organization {{userGivenName}}!",
							},
							{
									"name" : "locale",
									"value" : "en-us",
							},
						],
				},
			],
	}
)

result = await graph_client.identity_governance.lifecycle_workflows.workflows.by_workflow_id('workflow-id').microsoft_graph_identity_governance_create_new_version.post(request_body)


```