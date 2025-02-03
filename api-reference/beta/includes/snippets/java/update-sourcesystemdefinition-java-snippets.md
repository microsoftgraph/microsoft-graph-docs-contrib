---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.industrydata.SourceSystemDefinition sourceSystemDefinition = new com.microsoft.graph.beta.models.industrydata.SourceSystemDefinition();
sourceSystemDefinition.setVendor("LMS Vendor");
com.microsoft.graph.models.industrydata.SourceSystemDefinition result = graphClient.external().industryData().sourceSystems().bySourceSystemDefinitionId("{sourceSystemDefinition-id}").patch(sourceSystemDefinition);


```