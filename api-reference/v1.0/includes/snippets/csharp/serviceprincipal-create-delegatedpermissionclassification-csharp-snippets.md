---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new DelegatedPermissionClassification
{
	PermissionId = "e1fe6dd8-ba31-4d61-89e7-88639da4683d",
	PermissionName = "User.Read",
	Classification = PermissionClassificationType.Low,
};
var result = await graphClient.ServicePrincipals["{servicePrincipal-id}"].DelegatedPermissionClassifications.PostAsync(requestBody);


```