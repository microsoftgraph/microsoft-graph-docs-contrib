---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.networkaccess.cloud_firewall_rule import CloudFirewallRule
from msgraph_beta.generated.models.cloud_firewall_action import CloudFirewallAction
from msgraph_beta.generated.models.networkaccess.cloud_firewall_rule_settings import CloudFirewallRuleSettings
from msgraph_beta.generated.models.security_rule_status import SecurityRuleStatus
from msgraph_beta.generated.models.networkaccess.cloud_firewall_matching_conditions import CloudFirewallMatchingConditions
from msgraph_beta.generated.models.networkaccess.cloud_firewall_source_matching import CloudFirewallSourceMatching
from msgraph_beta.generated.models.networkaccess.cloud_firewall_source_address import CloudFirewallSourceAddress
from msgraph_beta.generated.models.networkaccess.cloud_firewall_source_ip_address import CloudFirewallSourceIpAddress
from msgraph_beta.generated.models.networkaccess.cloud_firewall_destination_matching import CloudFirewallDestinationMatching
from msgraph_beta.generated.models.networkaccess.cloud_firewall_destination_address import CloudFirewallDestinationAddress
from msgraph_beta.generated.models.networkaccess.cloud_firewall_destination_ip_address import CloudFirewallDestinationIpAddress
from msgraph_beta.generated.models.cloud_firewall_protocol import CloudFirewallProtocol
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CloudFirewallRule(
	odata_type = "#microsoft.graph.networkaccess.cloudFirewallRule",
	name = "Block outbound to risky destinations",
	description = "Block traffic to specific IPs on common ports",
	priority = 100,
	action = CloudFirewallAction.Block,
	settings = CloudFirewallRuleSettings(
		status = SecurityRuleStatus.Enabled,
	),
	matching_conditions = CloudFirewallMatchingConditions(
		sources = CloudFirewallSourceMatching(
			addresses = [
				CloudFirewallSourceIpAddress(
					odata_type = "#microsoft.graph.networkaccess.cloudFirewallSourceIpAddress",
					values = [
						"192.168.1.1",
						"192.168.0.0/16",
						"172.16.0.0-172.16.255.255",
					],
				),
			],
			ports = [
				"80",
				"443",
				"445-447",
			],
		),
		destinations = CloudFirewallDestinationMatching(
			addresses = [
				CloudFirewallDestinationIpAddress(
					odata_type = "#microsoft.graph.networkaccess.cloudFirewallDestinationIpAddress",
					values = [
						"10.0.0.1",
					],
				),
			],
			ports = [
				"80",
				"443",
				"445-447",
			],
			protocols = CloudFirewallProtocol.Tcp,
		),
	),
)

result = await graph_client.network_access.cloud_firewall_policies.by_cloud_firewall_policy_id('cloudFirewallPolicy-id').policy_rules.post(request_body)


```