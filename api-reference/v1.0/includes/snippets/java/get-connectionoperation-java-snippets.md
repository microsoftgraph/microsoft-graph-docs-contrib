---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.externalconnectors.ConnectionOperation result = graphClient.external().connections().byExternalConnectionId("{externalConnection-id}").operations().byConnectionOperationId("{connectionOperation-id}").get();


```