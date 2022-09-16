---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var mobilityManagementPolicy = new MobilityManagementPolicy
{
	ComplianceUrl = "https://portal.mg.contoso.com/?portalAction=Compliance",
	DiscoveryUrl = "https://enrollment.mg.contoso.com/enrollmentserver/discovery.svc",
	TermsOfUseUrl = "https://portal.mg.contoso.com/TermsofUse.aspx"
};

await graphClient.Policies.MobileAppManagementPolicies["{mobilityManagementPolicy-id}"]
	.Request()
	.UpdateAsync(mobilityManagementPolicy);

```