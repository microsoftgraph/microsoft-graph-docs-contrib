---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.networkaccess.CloudFirewallRule policyRule = new com.microsoft.graph.beta.models.networkaccess.CloudFirewallRule();
policyRule.setOdataType("#microsoft.graph.networkaccess.cloudFirewallRule");
policyRule.setName("Block outbound to risky destinations");
policyRule.setDescription("Block traffic to specific IPs on common ports");
policyRule.setPriority(100L);
policyRule.setAction(com.microsoft.graph.beta.models.networkaccess.CloudFirewallAction.Block);
com.microsoft.graph.beta.models.networkaccess.CloudFirewallRuleSettings settings = new com.microsoft.graph.beta.models.networkaccess.CloudFirewallRuleSettings();
settings.setStatus(com.microsoft.graph.beta.models.networkaccess.SecurityRuleStatus.Enabled);
policyRule.setSettings(settings);
com.microsoft.graph.beta.models.networkaccess.CloudFirewallMatchingConditions matchingConditions = new com.microsoft.graph.beta.models.networkaccess.CloudFirewallMatchingConditions();
com.microsoft.graph.beta.models.networkaccess.CloudFirewallSourceMatching sources = new com.microsoft.graph.beta.models.networkaccess.CloudFirewallSourceMatching();
LinkedList<com.microsoft.graph.beta.models.networkaccess.CloudFirewallSourceAddress> addresses = new LinkedList<com.microsoft.graph.beta.models.networkaccess.CloudFirewallSourceAddress>();
com.microsoft.graph.beta.models.networkaccess.CloudFirewallSourceIpAddress cloudFirewallSourceAddress = new com.microsoft.graph.beta.models.networkaccess.CloudFirewallSourceIpAddress();
cloudFirewallSourceAddress.setOdataType("#microsoft.graph.networkaccess.cloudFirewallSourceIpAddress");
LinkedList<String> values = new LinkedList<String>();
values.add("192.168.1.1");
values.add("192.168.0.0/16");
values.add("172.16.0.0-172.16.255.255");
cloudFirewallSourceAddress.setValues(values);
addresses.add(cloudFirewallSourceAddress);
sources.setAddresses(addresses);
LinkedList<String> ports = new LinkedList<String>();
ports.add("80");
ports.add("443");
ports.add("445-447");
sources.setPorts(ports);
matchingConditions.setSources(sources);
com.microsoft.graph.beta.models.networkaccess.CloudFirewallDestinationMatching destinations = new com.microsoft.graph.beta.models.networkaccess.CloudFirewallDestinationMatching();
LinkedList<com.microsoft.graph.beta.models.networkaccess.CloudFirewallDestinationAddress> addresses1 = new LinkedList<com.microsoft.graph.beta.models.networkaccess.CloudFirewallDestinationAddress>();
com.microsoft.graph.beta.models.networkaccess.CloudFirewallDestinationIpAddress cloudFirewallDestinationAddress = new com.microsoft.graph.beta.models.networkaccess.CloudFirewallDestinationIpAddress();
cloudFirewallDestinationAddress.setOdataType("#microsoft.graph.networkaccess.cloudFirewallDestinationIpAddress");
LinkedList<String> values1 = new LinkedList<String>();
values1.add("10.0.0.1");
cloudFirewallDestinationAddress.setValues(values1);
addresses1.add(cloudFirewallDestinationAddress);
destinations.setAddresses(addresses1);
LinkedList<String> ports1 = new LinkedList<String>();
ports1.add("80");
ports1.add("443");
ports1.add("445-447");
destinations.setPorts(ports1);
destinations.setProtocols(EnumSet.of(com.microsoft.graph.beta.models.networkaccess.CloudFirewallProtocol.Tcp));
matchingConditions.setDestinations(destinations);
policyRule.setMatchingConditions(matchingConditions);
com.microsoft.graph.models.networkaccess.PolicyRule result = graphClient.networkAccess().cloudFirewallPolicies().byCloudFirewallPolicyId("{cloudFirewallPolicy-id}").policyRules().post(policyRule);


```