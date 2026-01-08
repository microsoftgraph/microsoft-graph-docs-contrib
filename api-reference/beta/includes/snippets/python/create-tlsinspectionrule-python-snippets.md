---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.networkaccess.tls_inspection_rule import TlsInspectionRule
from msgraph_beta.generated.models.networkaccess.tls_inspection_rule_settings import TlsInspectionRuleSettings
from msgraph_beta.generated.models.security_rule_status import SecurityRuleStatus
from msgraph_beta.generated.models.networkaccess.tls_inspection_matching_conditions import TlsInspectionMatchingConditions
from msgraph_beta.generated.models.networkaccess.tls_inspection_destination import TlsInspectionDestination
from msgraph_beta.generated.models.networkaccess.tls_inspection_fqdn_destination import TlsInspectionFqdnDestination
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = TlsInspectionRule(
	odata_type = "#microsoft.graph.networkaccess.tlsInspectionRule",
	name = "Contoso TLS Rule 1",
	priority = 100,
	description = "My TLS rule",
	settings = TlsInspectionRuleSettings(
		status = SecurityRuleStatus.Enabled,
	),
	matching_conditions = TlsInspectionMatchingConditions(
		destinations = [
			TlsInspectionFqdnDestination(
				odata_type = "#microsoft.graph.networkaccess.tlsInspectionFqdnDestination",
				values = [
					"www.contoso.test.com",
					"*.contoso.org",
				],
			),
			TlsInspectionDestination(
				odata_type = "#microsoft.graph.networkaccess.tlsInspectionWebCategoriesDestination",
				additional_data = {
						"values" : [
							"Entertainment",
						],
				}
			),
		],
	),
	additional_data = {
			"action" : "inspect",
	}
)

result = await graph_client.network_access.tls_inspection_policies.by_tls_inspection_policy_id('tlsInspectionPolicy-id').policy_rules.post(request_body)


```