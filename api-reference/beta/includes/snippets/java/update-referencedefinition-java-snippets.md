---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.industrydata.ReferenceDefinition referenceDefinition = new com.microsoft.graph.beta.models.industrydata.ReferenceDefinition();
referenceDefinition.setOdataType("#microsoft.graph.industryData.referenceDefinition");
referenceDefinition.setDisplayName("Updated Test Grade Name");
com.microsoft.graph.models.industrydata.ReferenceDefinition result = graphClient.external().industryData().referenceDefinitions().byReferenceDefinitionId("{referenceDefinition-id}").patch(referenceDefinition);


```