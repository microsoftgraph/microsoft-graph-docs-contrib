---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.security.cases.ediscoverycases.item.searches.item.microsoftgraphsecurityexportresult.ExportResultPostRequestBody exportResultPostRequestBody = new com.microsoft.graph.beta.security.cases.ediscoverycases.item.searches.item.microsoftgraphsecurityexportresult.ExportResultPostRequestBody();
exportResultPostRequestBody.setDisplayName("Export 1 - simple PST");
exportResultPostRequestBody.setExportCriteria(EnumSet.of(com.microsoft.graph.beta.models.security.ExportCriteria.SearchHits));
exportResultPostRequestBody.setAdditionalOptions(EnumSet.of(com.microsoft.graph.beta.models.security.AdditionalOptions.HtmlTranscripts, com.microsoft.graph.beta.models.security.AdditionalOptions.SplitSource, com.microsoft.graph.beta.models.security.AdditionalOptions.IncludeFolderAndPath, com.microsoft.graph.beta.models.security.AdditionalOptions.CondensePaths, com.microsoft.graph.beta.models.security.AdditionalOptions.FriendlyName));
exportResultPostRequestBody.setExportFormat(com.microsoft.graph.beta.models.security.ExportFormat.Pst);
graphClient.security().cases().ediscoveryCases().byEdiscoveryCaseId("{ediscoveryCase-id}").searches().byEdiscoverySearchId("{ediscoverySearch-id}").microsoftGraphSecurityExportResult().post(exportResultPostRequestBody);


```