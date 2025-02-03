---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PrintTaskDefinition printTaskDefinition = new PrintTaskDefinition();
printTaskDefinition.setDisplayName("Test TaskDefinitionName");
AppIdentity createdBy = new AppIdentity();
createdBy.setDisplayName("Requesting App Display Name");
printTaskDefinition.setCreatedBy(createdBy);
PrintTaskDefinition result = graphClient.print().taskDefinitions().byPrintTaskDefinitionId("{printTaskDefinition-id}").patch(printTaskDefinition);


```