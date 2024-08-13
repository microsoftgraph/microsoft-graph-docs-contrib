---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.industrydata.IndustryDataConnector result = graphClient.external().industryData().dataConnectors().byIndustryDataConnectorId("{industryDataConnector-id}").get();


```