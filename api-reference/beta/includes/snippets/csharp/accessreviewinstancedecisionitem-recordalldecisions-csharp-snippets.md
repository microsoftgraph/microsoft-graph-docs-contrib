---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var decision = "Deny";

var justification = "Alice switched teams and no longer works with this group";

var principalId = "2043848d-e422-473c-8607-88a3319ff491";

var resourceId = "733ef921-89e1-4d7e-aeff-83612223c37e";

await graphClient.IdentityGovernance.AccessReviews.Decisions
	.FilterByCurrentUser(null)
	.RecordAllDecisions(decision,justification,principalId,resourceId)
	.Request()
	.PostAsync();

```