---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Application application = new Application();
LinkedList<RequiredResourceAccess> requiredResourceAccessList = new LinkedList<RequiredResourceAccess>();
RequiredResourceAccess requiredResourceAccess = new RequiredResourceAccess();
requiredResourceAccess.resourceAppId = "00000002-0000-0000-c000-000000000000";
LinkedList<ResourceAccess> resourceAccessList = new LinkedList<ResourceAccess>();
ResourceAccess resourceAccess = new ResourceAccess();
resourceAccess.id = UUID.fromString("311a71cc-e848-46a1-bdf8-97ff7156d8e6");
resourceAccess.type = "Scope";
resourceAccessList.add(resourceAccess);
ResourceAccess resourceAccess1 = new ResourceAccess();
resourceAccess1.id = UUID.fromString("3afa6a7d-9b1a-42eb-948e-1650a849e176");
resourceAccess1.type = "Role";
resourceAccessList.add(resourceAccess1);
requiredResourceAccess.resourceAccess = resourceAccessList;
requiredResourceAccessList.add(requiredResourceAccess);
application.requiredResourceAccess = requiredResourceAccessList;

graphClient.applications("581088ba-83c5-4975-b8af-11d2d7a76e98")
	.buildRequest()
	.patch(application);

```