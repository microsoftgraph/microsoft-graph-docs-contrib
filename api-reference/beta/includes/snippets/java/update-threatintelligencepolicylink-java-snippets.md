---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.networkaccess.ThreatIntelligencePolicyLink policyLink = new com.microsoft.graph.beta.models.networkaccess.ThreatIntelligencePolicyLink();
policyLink.setOdataType("#microsoft.graph.networkaccess.threatIntelligencePolicyLink");
policyLink.setState(com.microsoft.graph.beta.models.networkaccess.Status.Enabled);
policyLink.setVersion("String");
com.microsoft.graph.models.networkaccess.PolicyLink result = graphClient.networkAccess().filteringProfiles().byFilteringProfileId("{filteringProfile-id}").policies().byPolicyLinkId("{policyLink-id}").patch(policyLink);


```