---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MobilityManagementPolicy mobilityManagementPolicy = new MobilityManagementPolicy();
mobilityManagementPolicy.setOdataType("#microsoft.graph.mobilityManagementPolicy");
mobilityManagementPolicy.setComplianceUrl("https://portal.uem.contoso.com/?portalAction=Compliance");
mobilityManagementPolicy.setDiscoveryUrl("https://enrollment.uem.contoso.com/enrollmentserver/discovery.svc");
mobilityManagementPolicy.setTermsOfUseUrl("https://portal.uem.contoso.com/TermsofUse.aspx");
MobilityManagementPolicy result = graphClient.policies().mobileDeviceManagementPolicies().byMobilityManagementPolicyId("{mobilityManagementPolicy-id}").patch(mobilityManagementPolicy);


```