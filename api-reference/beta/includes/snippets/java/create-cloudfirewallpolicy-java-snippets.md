---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.networkaccess.CloudFirewallPolicy cloudFirewallPolicy = new com.microsoft.graph.beta.models.networkaccess.CloudFirewallPolicy();
cloudFirewallPolicy.setOdataType("#microsoft.graph.networkaccess.cloudFirewallPolicy");
cloudFirewallPolicy.setName("Block unauthorized egress");
cloudFirewallPolicy.setDescription("Policy to block unauthorized outbound connections");
com.microsoft.graph.beta.models.networkaccess.CloudFirewallPolicySettings settings = new com.microsoft.graph.beta.models.networkaccess.CloudFirewallPolicySettings();
settings.setDefaultAction(com.microsoft.graph.beta.models.networkaccess.CloudFirewallAction.Allow);
cloudFirewallPolicy.setSettings(settings);
com.microsoft.graph.models.networkaccess.CloudFirewallPolicy result = graphClient.networkAccess().cloudFirewallPolicies().post(cloudFirewallPolicy);


```