---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MobilityManagementPolicy mobileDeviceManagementPolicy = new MobilityManagementPolicy();
mobileDeviceManagementPolicy.setOdataType("#microsoft.graph.mobilityManagementPolicy");
mobileDeviceManagementPolicy.setComplianceUrl("https://portal.uem.contoso.com/?portalAction=Compliance");
mobileDeviceManagementPolicy.setDiscoveryUrl("https://enrollment.uem.contoso.com/enrollmentserver/discovery.svc");
mobileDeviceManagementPolicy.setTermsOfUseUrl("https://portal.uem.contoso.com/TermsofUse.aspx");
MobileDeviceManagementPolicy result = graphClient.policies().mobileDeviceManagementPolicies().byMobileDeviceManagementPolicyId("{mobileDeviceManagementPolicy-id}").patch(mobileDeviceManagementPolicy);


```