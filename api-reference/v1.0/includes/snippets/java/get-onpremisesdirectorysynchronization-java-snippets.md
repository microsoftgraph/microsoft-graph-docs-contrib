---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OnPremisesDirectorySynchronization result = graphClient.directory().onPremisesSynchronization().byOnPremisesDirectorySynchronizationId("{onPremisesDirectorySynchronization-id}").get();


```