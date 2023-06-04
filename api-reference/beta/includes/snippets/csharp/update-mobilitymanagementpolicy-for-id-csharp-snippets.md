---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new MobilityManagementPolicy
{
	OdataType = "#microsoft.graph.mobilityManagementPolicy",
	ComplianceUrl = "https://portal.mg.contoso.com/?portalAction=Compliance",
	DiscoveryUrl = "https://enrollment.mg.contoso.com/enrollmentserver/discovery.svc",
	TermsOfUseUrl = "https://portal.mg.contoso.com/TermsofUse.aspx",
};
var result = await graphClient.Policies.MobileAppManagementPolicies["{mobilityManagementPolicy-id}"].PatchAsync(requestBody);


```