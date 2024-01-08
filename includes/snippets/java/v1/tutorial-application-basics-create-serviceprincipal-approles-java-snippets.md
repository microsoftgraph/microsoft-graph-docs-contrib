---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Application application = new Application();
LinkedList<AppRole> appRolesList = new LinkedList<AppRole>();
AppRole appRoles = new AppRole();
LinkedList<String> allowedMemberTypesList = new LinkedList<String>();
allowedMemberTypesList.add("User");
allowedMemberTypesList.add("Application");
appRoles.allowedMemberTypes = allowedMemberTypesList;
appRoles.description = "Survey.Read";
appRoles.displayName = "Survey.Read";
appRoles.id = UUID.fromString("7a9ddfc4-cc8a-48ea-8275-8ecbffffd5a0");
appRoles.isEnabled = false;
appRoles.origin = "Application";
appRoles.value = "Survey.Read";
appRolesList.add(appRoles);
application.appRoles = appRolesList;

graphClient.applications("bbd46130-e957-4c38-a116-d4d02afd1057")
	.buildRequest()
	.patch(application);

```