---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new MobilityManagementPolicy
{
	OdataType = "#microsoft.graph.mobilityManagementPolicy",
	ComplianceUrl = "https://portal.uem.contoso.com/?portalAction=Compliance",
	DiscoveryUrl = "https://enrollment.uem.contoso.com/enrollmentserver/discovery.svc",
	TermsOfUseUrl = "https://portal.uem.contoso.com/TermsofUse.aspx",
};
var result = await graphClient.Policies.MobileDeviceManagementPolicies["{mobilityManagementPolicy-id}"].PatchAsync(requestBody);


```