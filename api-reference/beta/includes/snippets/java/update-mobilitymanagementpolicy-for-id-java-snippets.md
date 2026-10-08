---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MobilityManagementPolicy mobileAppManagementPolicy = new MobilityManagementPolicy();
mobileAppManagementPolicy.setOdataType("#microsoft.graph.mobilityManagementPolicy");
mobileAppManagementPolicy.setComplianceUrl("https://portal.mg.contoso.com/?portalAction=Compliance");
mobileAppManagementPolicy.setDiscoveryUrl("https://enrollment.mg.contoso.com/enrollmentserver/discovery.svc");
mobileAppManagementPolicy.setTermsOfUseUrl("https://portal.mg.contoso.com/TermsofUse.aspx");
MobileAppManagementPolicy result = graphClient.policies().mobileAppManagementPolicies().byMobileAppManagementPolicyId("{mobileAppManagementPolicy-id}").patch(mobileAppManagementPolicy);


```