---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.Zone zone = new com.microsoft.graph.beta.models.security.Zone();
zone.setDisplayName("Production Zone");
zone.setDescription("Zone for production environments");
LinkedList<com.microsoft.graph.beta.models.security.Environment> environments = new LinkedList<com.microsoft.graph.beta.models.security.Environment>();
com.microsoft.graph.beta.models.security.Environment environment = new com.microsoft.graph.beta.models.security.Environment();
environment.setKind(com.microsoft.graph.beta.models.security.EnvironmentKind.AwsAccount);
environment.setId("181994123251");
environments.add(environment);
com.microsoft.graph.beta.models.security.Environment environment1 = new com.microsoft.graph.beta.models.security.Environment();
environment1.setKind(com.microsoft.graph.beta.models.security.EnvironmentKind.AwsAccount);
environment1.setId("326438728454");
environments.add(environment1);
com.microsoft.graph.beta.models.security.Environment environment2 = new com.microsoft.graph.beta.models.security.Environment();
environment2.setKind(com.microsoft.graph.beta.models.security.EnvironmentKind.AzureSubscription);
environment2.setId("/subscriptions/02687862-a843-4846-81f0-efe9ef244daa");
environments.add(environment2);
com.microsoft.graph.beta.models.security.Environment environment3 = new com.microsoft.graph.beta.models.security.Environment();
environment3.setKind(com.microsoft.graph.beta.models.security.EnvironmentKind.GcpProject);
environment3.setId("69483221284");
environments.add(environment3);
zone.setEnvironments(environments);
com.microsoft.graph.models.security.Zone result = graphClient.security().zones().post(zone);


```