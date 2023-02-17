---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ServicePrincipal servicePrincipal = new ServicePrincipal();
LinkedList<AppRole> appRolesList = new LinkedList<AppRole>();
AppRole appRoles = new AppRole();
LinkedList<String> allowedMemberTypesList = new LinkedList<String>();
allowedMemberTypesList.add("User");
appRoles.allowedMemberTypes = allowedMemberTypesList;
appRoles.description = "Survey.ReadWrite.All";
appRoles.displayName = "Survey.ReadWrite.All";
appRoles.id = UUID.fromString("3ce57053-0ebf-42d8-bf7c-74161a450e4b");
appRoles.isEnabled = true;
appRoles.value = "Survey.ReadWrite.All";
appRolesList.add(appRoles);
AppRole appRoles1 = new AppRole();
LinkedList<String> allowedMemberTypesList1 = new LinkedList<String>();
allowedMemberTypesList1.add("User");
allowedMemberTypesList1.add("Application");
appRoles1.allowedMemberTypes = allowedMemberTypesList1;
appRoles1.description = "Survey.Read";
appRoles1.displayName = "Survey.Read";
appRoles1.id = UUID.fromString("7a9ddfc4-cc8a-48ea-8275-8ecbffffd5a0");
appRoles1.isEnabled = false;
appRoles1.origin = "Application";
appRoles1.value = "Survey.Read";
appRolesList.add(appRoles1);
servicePrincipal.appRoles = appRolesList;

graphClient.servicePrincipals("2a8f9e7a-af01-413a-9592-c32ec0e5c1a7")
	.buildRequest()
	.patch(servicePrincipal);

```