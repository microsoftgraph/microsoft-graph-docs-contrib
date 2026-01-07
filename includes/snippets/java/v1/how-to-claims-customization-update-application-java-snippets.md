---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Application application = new Application();
ApiApplication api = new ApiApplication();
api.setAcceptMappedClaims(true);
api.setRequestedAccessTokenVersion(2);
application.setApi(api);
Application result = graphClient.applications().byApplicationId("{application-id}").patch(application);


```