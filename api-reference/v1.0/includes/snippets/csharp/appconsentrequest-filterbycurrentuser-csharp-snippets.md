---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var filterByCurrentUser = await graphClient.IdentityGovernance.AppConsent.AppConsentRequests
	.FilterByCurrentUser(On.Reviewer)
	.Request()
	.Filter("userConsentRequests/any(u:u/status eq 'InProgress')")
	.GetAsync();

```