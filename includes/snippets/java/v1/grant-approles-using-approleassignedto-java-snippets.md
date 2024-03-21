---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AppRoleAssignment appRoleAssignment = new AppRoleAssignment();
appRoleAssignment.setPrincipalId(UUID.fromString("b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94"));
appRoleAssignment.setResourceId(UUID.fromString("7ea9e944-71ce-443d-811c-71e8047b557a"));
appRoleAssignment.setAppRoleId(UUID.fromString("df021288-bdef-4463-88db-98f22de89214"));
AppRoleAssignment result = graphClient.servicePrincipals().byServicePrincipalId("{servicePrincipal-id}").appRoleAssignedTo().post(appRoleAssignment);


```