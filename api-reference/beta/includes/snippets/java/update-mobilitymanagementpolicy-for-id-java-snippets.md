---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MobilityManagementPolicy mobilityManagementPolicy = new MobilityManagementPolicy();
mobilityManagementPolicy.setOdataType("#microsoft.graph.mobilityManagementPolicy");
mobilityManagementPolicy.setComplianceUrl("https://portal.mg.contoso.com/?portalAction=Compliance");
mobilityManagementPolicy.setDiscoveryUrl("https://enrollment.mg.contoso.com/enrollmentserver/discovery.svc");
mobilityManagementPolicy.setTermsOfUseUrl("https://portal.mg.contoso.com/TermsofUse.aspx");
MobilityManagementPolicy result = graphClient.policies().mobileAppManagementPolicies().byMobilityManagementPolicyId("{mobilityManagementPolicy-id}").patch(mobilityManagementPolicy);


```