---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.externalconnectors.ExternalConnection externalConnection = new com.microsoft.graph.beta.models.externalconnectors.ExternalConnection();
externalConnection.setId("contosohr");
externalConnection.setName("Contoso HR");
externalConnection.setDescription("Connection to index Contoso HR system");
com.microsoft.graph.models.externalconnectors.ExternalConnection result = graphClient.external().connections().post(externalConnection);


```