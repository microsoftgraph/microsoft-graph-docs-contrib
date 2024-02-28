---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DelegatedPermissionClassification delegatedPermissionClassification = new DelegatedPermissionClassification();
delegatedPermissionClassification.setPermissionId("e1fe6dd8-ba31-4d61-89e7-88639da4683d");
delegatedPermissionClassification.setPermissionName("User.Read");
delegatedPermissionClassification.setClassification(PermissionClassificationType.Low);
DelegatedPermissionClassification result = graphClient.servicePrincipals().byServicePrincipalId("{servicePrincipal-id}").delegatedPermissionClassifications().post(delegatedPermissionClassification);


```