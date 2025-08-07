---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.security.cases.ediscoverycases.item.searches.item.microsoftgraphsecurityexportresult.ExportResultPostRequestBody exportResultPostRequestBody = new com.microsoft.graph.security.cases.ediscoverycases.item.searches.item.microsoftgraphsecurityexportresult.ExportResultPostRequestBody();
exportResultPostRequestBody.setDisplayName("Export 5");
exportResultPostRequestBody.setExportCriteria(EnumSet.of(com.microsoft.graph.models.security.ExportCriteria.PartiallyIndexed));
exportResultPostRequestBody.setExportLocation(EnumSet.of(com.microsoft.graph.models.security.ExportLocation.ResponsiveLocations));
exportResultPostRequestBody.setAdditionalOptions(EnumSet.of(com.microsoft.graph.models.security.AdditionalOptions.SplitSource, com.microsoft.graph.models.security.AdditionalOptions.IncludeFolderAndPath, com.microsoft.graph.models.security.AdditionalOptions.CondensePaths, com.microsoft.graph.models.security.AdditionalOptions.FriendlyName));
exportResultPostRequestBody.setExportFormat(com.microsoft.graph.models.security.ExportFormat.Eml);
exportResultPostRequestBody.setCloudAttachmentVersion(com.microsoft.graph.models.security.CloudAttachmentVersion.All);
exportResultPostRequestBody.setDocumentVersion(com.microsoft.graph.models.security.DocumentVersion.Recent100);
graphClient.security().cases().ediscoveryCases().byEdiscoveryCaseId("{ediscoveryCase-id}").searches().byEdiscoverySearchId("{ediscoverySearch-id}").microsoftGraphSecurityExportResult().post(exportResultPostRequestBody);


```