---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.security.detection_rule import DetectionRule
from msgraph_beta.generated.models.security.query_condition import QueryCondition
from msgraph_beta.generated.models.security.rule_schedule import RuleSchedule
from msgraph_beta.generated.models.security.detection_action import DetectionAction
from msgraph_beta.generated.models.security.alert_template import AlertTemplate
from msgraph_beta.generated.models.alert_severity import AlertSeverity
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DetectionRule(
	odata_type = "#microsoft.graph.security.detectionRule",
	id = "office-encoded-powershell",
	display_name = "Suspicious encoded PowerShell from Office",
	query_condition = QueryCondition(
		query_text = "DeviceProcessEvents | where InitiatingProcessFileName in~ ('winword.exe','excel.exe','outlook.exe') | where FileName == 'powershell.exe' | where ProcessCommandLine has '-enc'",
	),
	schedule = RuleSchedule(
		additional_data = {
				"frequency" : "PT1H",
		}
	),
	detection_action = DetectionAction(
		alert_template = AlertTemplate(
			title = "Suspicious encoded PowerShell from Office",
			description = "An Office app launched an encoded PowerShell command, which may indicate phishing-driven code execution.",
			severity = AlertSeverity.High,
			recommended_actions = "Investigate the parent Office document, isolate the device, and review the user's recent email activity.",
			additional_data = {
					"entity_mappings" : {
							"accounts" : [
								{
										"name_column" : "AccountName",
										"nt_domain_column" : "AccountDomain",
										"sid_column" : "AccountSid",
								},
							],
							"hosts" : [
								{
										"device_id_column" : "DeviceId",
										"name_column" : "DeviceName",
								},
							],
							"files" : [
								{
										"name_column" : "FileName",
										"sha1_column" : "SHA1",
										"sha256_column" : "SHA256",
								},
							],
					},
					"tactics" : [
						{
								"tactic" : "Execution",
								"techniques" : [
									{
											"technique" : "T1059.001",
									},
								],
						},
					],
			}
		),
	),
	additional_data = {
			"description" : "Detects encoded PowerShell processes launched by Office applications, a common phishing payload pattern.",
			"status" : "enabled",
	}
)

result = await graph_client.security.rules.detection_rules.post(request_body)


```