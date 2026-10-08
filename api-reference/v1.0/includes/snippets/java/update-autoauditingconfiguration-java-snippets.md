---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.security.AutoAuditingConfiguration autoAuditingConfiguration = new com.microsoft.graph.models.security.AutoAuditingConfiguration();
autoAuditingConfiguration.setOdataType("#microsoft.graph.security.autoAuditingConfiguration");
autoAuditingConfiguration.setIsAutomatic(true);
com.microsoft.graph.models.security.AutoAuditingConfiguration result = graphClient.security().identities().settings().autoAuditingConfiguration().patch(autoAuditingConfiguration);


```