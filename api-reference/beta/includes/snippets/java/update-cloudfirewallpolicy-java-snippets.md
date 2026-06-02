---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.networkaccess.CloudFirewallPolicy cloudFirewallPolicy = new com.microsoft.graph.beta.models.networkaccess.CloudFirewallPolicy();
cloudFirewallPolicy.setDescription("Updated policy description");
com.microsoft.graph.models.networkaccess.CloudFirewallPolicy result = graphClient.networkAccess().cloudFirewallPolicies().byCloudFirewallPolicyId("{cloudFirewallPolicy-id}").patch(cloudFirewallPolicy);


```