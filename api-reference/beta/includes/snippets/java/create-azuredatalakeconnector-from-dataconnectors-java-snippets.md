---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.industrydata.AzureDataLakeConnector industryDataConnector = new com.microsoft.graph.beta.models.industrydata.AzureDataLakeConnector();
industryDataConnector.setOdataType("#microsoft.graph.industryData.azureDataLakeConnector");
industryDataConnector.setDisplayName("CSV connector");
com.microsoft.graph.beta.models.industrydata.FileFormatReferenceValue fileFormat = new com.microsoft.graph.beta.models.industrydata.FileFormatReferenceValue();
fileFormat.setOdataType("microsoft.graph.industryData.fileFormatReferenceValue");
fileFormat.setCode("schoolDataSyncV1");
industryDataConnector.setFileFormat(fileFormat);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("sourceSystem@odata.bind", "https://graph.microsoft.com/beta/external/industryData/sourceSystems('aa050107-5784-4a8e-1876-08daddab21bc')");
industryDataConnector.setAdditionalData(additionalData);
com.microsoft.graph.models.industrydata.IndustryDataConnector result = graphClient.external().industryData().dataConnectors().post(industryDataConnector);


```