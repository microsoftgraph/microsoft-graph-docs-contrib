---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.externalconnectors.ExternalConnection externalConnection = new com.microsoft.graph.beta.models.externalconnectors.ExternalConnection();
externalConnection.setName("Contoso HR Service Tickets");
externalConnection.setDescription("Connection to index HR service tickets");
com.microsoft.graph.models.externalconnectors.ExternalConnection result = graphClient.external().connections().byExternalConnectionId("{externalConnection-id}").patch(externalConnection);


```