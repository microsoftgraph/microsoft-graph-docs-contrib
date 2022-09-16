---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MobilityManagementPolicy mobilityManagementPolicy = new MobilityManagementPolicy();
mobilityManagementPolicy.complianceUrl = "https://portal.mg.contoso.com/?portalAction=Compliance";
mobilityManagementPolicy.discoveryUrl = "https://enrollment.mg.contoso.com/enrollmentserver/discovery.svc";
mobilityManagementPolicy.termsOfUseUrl = "https://portal.mg.contoso.com/TermsofUse.aspx";

graphClient.policies().mobileAppManagementPolicies("ab90bacf-55a3-4a3e-839a-aa4b74e4f020")
	.buildRequest()
	.patch(mobilityManagementPolicy);

```