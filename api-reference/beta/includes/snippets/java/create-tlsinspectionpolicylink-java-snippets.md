---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.networkaccess.TlsInspectionPolicyLink policyLink = new com.microsoft.graph.beta.models.networkaccess.TlsInspectionPolicyLink();
policyLink.setOdataType("#microsoft.graph.networkaccess.tlsInspectionPolicyLink");
policyLink.setState(com.microsoft.graph.beta.models.networkaccess.Status.Enabled);
com.microsoft.graph.beta.models.networkaccess.TlsInspectionPolicy policy = new com.microsoft.graph.beta.models.networkaccess.TlsInspectionPolicy();
policy.setOdataType("#microsoft.graph.networkaccess.tlsInspectionPolicy");
policy.setId("b712c469-e7cd-e7cb-738f-94b199570b0d");
policyLink.setPolicy(policy);
com.microsoft.graph.models.networkaccess.PolicyLink result = graphClient.networkAccess().filteringProfiles().byFilteringProfileId("{filteringProfile-id}").policies().post(policyLink);


```