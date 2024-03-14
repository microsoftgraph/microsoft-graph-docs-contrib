---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.networkaccess.ForwardingPolicyLink policyLink = new com.microsoft.graph.beta.models.networkaccess.ForwardingPolicyLink();
policyLink.setOdataType("#microsoft.graph.networkaccess.forwardingPolicyLink");
policyLink.setState(com.microsoft.graph.beta.models.networkaccess.Status.Enabled);
com.microsoft.graph.models.networkaccess.PolicyLink result = graphClient.networkAccess().forwardingProfiles().byForwardingProfileId("{forwardingProfile-id}").policies().byPolicyLinkId("{policyLink-id}").patch(policyLink);


```