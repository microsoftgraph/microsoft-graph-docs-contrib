---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Application application = new Application();
LinkedList<AppRole> appRoles = new LinkedList<AppRole>();
AppRole appRole = new AppRole();
LinkedList<String> allowedMemberTypes = new LinkedList<String>();
allowedMemberTypes.add("User");
allowedMemberTypes.add("Application");
appRole.setAllowedMemberTypes(allowedMemberTypes);
appRole.setDescription("Survey.Read");
appRole.setDisplayName("Survey.Read");
appRole.setId(UUID.fromString("ebb7c86c-fb47-4e3f-8191-420ff1b9de4a"));
appRole.setIsEnabled(false);
appRole.setOrigin("Application");
appRole.setValue("Survey.Read");
appRoles.add(appRole);
application.setAppRoles(appRoles);
Application result = graphClient.applications().byApplicationId("{application-id}").patch(application);


```