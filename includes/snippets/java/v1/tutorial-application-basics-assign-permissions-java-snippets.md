---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Application application = new Application();
LinkedList<RequiredResourceAccess> requiredResourceAccess = new LinkedList<RequiredResourceAccess>();
RequiredResourceAccess requiredResourceAccess1 = new RequiredResourceAccess();
requiredResourceAccess1.setResourceAppId("00000002-0000-0000-c000-000000000000");
LinkedList<ResourceAccess> resourceAccess = new LinkedList<ResourceAccess>();
ResourceAccess resourceAccess1 = new ResourceAccess();
resourceAccess1.setId(UUID.fromString("311a71cc-e848-46a1-bdf8-97ff7156d8e6"));
resourceAccess1.setType("Scope");
resourceAccess.add(resourceAccess1);
ResourceAccess resourceAccess2 = new ResourceAccess();
resourceAccess2.setId(UUID.fromString("3afa6a7d-9b1a-42eb-948e-1650a849e176"));
resourceAccess2.setType("Role");
resourceAccess.add(resourceAccess2);
requiredResourceAccess1.setResourceAccess(resourceAccess);
requiredResourceAccess.add(requiredResourceAccess1);
application.setRequiredResourceAccess(requiredResourceAccess);
Application result = graphClient.applications().byApplicationId("{application-id}").patch(application);


```