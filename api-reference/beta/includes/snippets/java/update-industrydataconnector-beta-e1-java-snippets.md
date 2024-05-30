---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.industrydata.AzureDataLakeConnector industryDataConnector = new com.microsoft.graph.beta.models.industrydata.AzureDataLakeConnector();
industryDataConnector.setOdataType("microsoft.graph.industryData.azureDataLakeConnector");
industryDataConnector.setDisplayName("API Monitor 60201009");
com.microsoft.graph.models.industrydata.IndustryDataConnector result = graphClient.external().industryData().dataConnectors().byIndustryDataConnectorId("{industryDataConnector-id}").patch(industryDataConnector);


```