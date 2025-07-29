---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.security.cases.ediscoverycases.item.searches.item.microsoftgraphsecurityexportresult.ExportResultPostRequestBody exportResultPostRequestBody = new com.microsoft.graph.security.cases.ediscoverycases.item.searches.item.microsoftgraphsecurityexportresult.ExportResultPostRequestBody();
exportResultPostRequestBody.setDisplayName("Export 4");
exportResultPostRequestBody.setExportCriteria(EnumSet.of(com.microsoft.graph.models.security.ExportCriteria.PartiallyIndexed));
exportResultPostRequestBody.setExportLocation(EnumSet.of(com.microsoft.graph.models.security.ExportLocation.ResponsiveLocations, com.microsoft.graph.models.security.ExportLocation.NonresponsiveLocations));
exportResultPostRequestBody.setAdditionalOptions(EnumSet.of(com.microsoft.graph.models.security.AdditionalOptions.AdvancedIndexing, com.microsoft.graph.models.security.AdditionalOptions.SubfolderContents, com.microsoft.graph.models.security.AdditionalOptions.AllItemsInFolder, com.microsoft.graph.models.security.AdditionalOptions.ListAttachments, com.microsoft.graph.models.security.AdditionalOptions.TeamsAndYammerConversations, com.microsoft.graph.models.security.AdditionalOptions.HtmlTranscripts, com.microsoft.graph.models.security.AdditionalOptions.CloudAttachments, com.microsoft.graph.models.security.AdditionalOptions.IncludeFolderAndPath, com.microsoft.graph.models.security.AdditionalOptions.SplitSource, com.microsoft.graph.models.security.AdditionalOptions.CondensePaths, com.microsoft.graph.models.security.AdditionalOptions.FriendlyName, com.microsoft.graph.models.security.AdditionalOptions.IncludeReport));
exportResultPostRequestBody.setExportFormat(com.microsoft.graph.models.security.ExportFormat.Eml);
graphClient.security().cases().ediscoveryCases().byEdiscoveryCaseId("{ediscoveryCase-id}").searches().byEdiscoverySearchId("{ediscoverySearch-id}").microsoftGraphSecurityExportResult().post(exportResultPostRequestBody);


```