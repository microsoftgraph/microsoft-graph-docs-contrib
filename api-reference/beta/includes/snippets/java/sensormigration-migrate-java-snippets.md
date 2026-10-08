---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.security.identities.sensormigration.microsoftgraphsecuritymigrate.MigratePostRequestBody migratePostRequestBody = new com.microsoft.graph.beta.security.identities.sensormigration.microsoftgraphsecuritymigrate.MigratePostRequestBody();
LinkedList<String> sensorIds = new LinkedList<String>();
sensorIds.add("fdce0c43-15e8-e322-7656-aff297505af5");
sensorIds.add("a1b2c3d4-e5f6-7890-abcd-ef1234567890");
migratePostRequestBody.setSensorIds(sensorIds);
var result = graphClient.security().identities().sensorMigration().microsoftGraphSecurityMigrate().post(migratePostRequestBody);


```