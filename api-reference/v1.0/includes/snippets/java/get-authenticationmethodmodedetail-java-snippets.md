---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AuthenticationMethodModeDetail result = graphClient.identity().conditionalAccess().authenticationStrength().authenticationMethodModes().byAuthenticationMethodModeDetailId("{authenticationMethodModeDetail-id}").get();


```