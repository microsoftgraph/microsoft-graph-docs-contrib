---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.networkaccess.ThreatIntelligencePolicy threatIntelligencePolicy = new com.microsoft.graph.beta.models.networkaccess.ThreatIntelligencePolicy();
threatIntelligencePolicy.setOdataType("#microsoft.graph.networkaccess.threatIntelligencePolicy");
threatIntelligencePolicy.setName("Malicious Domains Policy");
threatIntelligencePolicy.setDescription("Policy to block traffic to known malicious domains based on threat intelligence");
threatIntelligencePolicy.setVersion("1.0");
com.microsoft.graph.beta.models.networkaccess.ThreatIntelligencePolicySettings settings = new com.microsoft.graph.beta.models.networkaccess.ThreatIntelligencePolicySettings();
settings.setOdataType("microsoft.graph.networkaccess.threatIntelligencePolicySettings");
settings.setDefaultAction(com.microsoft.graph.beta.models.networkaccess.ThreatIntelligenceAction.Block);
threatIntelligencePolicy.setSettings(settings);
com.microsoft.graph.models.networkaccess.ThreatIntelligencePolicy result = graphClient.networkAccess().threatIntelligencePolicies().post(threatIntelligencePolicy);


```