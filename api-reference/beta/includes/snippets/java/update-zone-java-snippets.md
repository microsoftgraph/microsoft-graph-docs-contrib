---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.Zone zone = new com.microsoft.graph.beta.models.security.Zone();
zone.setDisplayName("Updated Production Zone");
zone.setDescription("Updated description for production environments");
com.microsoft.graph.models.security.Zone result = graphClient.security().zones().byZoneId("{zone-id}").patch(zone);


```