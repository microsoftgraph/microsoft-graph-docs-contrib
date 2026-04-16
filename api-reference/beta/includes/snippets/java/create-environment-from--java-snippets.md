---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.Environment environment = new com.microsoft.graph.beta.models.security.Environment();
environment.setKind(com.microsoft.graph.beta.models.security.EnvironmentKind.AzureSubscription);
environment.setId("/subscriptions/d34fd44c-ebfa-4a9c-bceb-9eeafe72ac15");
com.microsoft.graph.models.security.Environment result = graphClient.security().zones().byZoneId("{zone-id}").environments().post(environment);


```