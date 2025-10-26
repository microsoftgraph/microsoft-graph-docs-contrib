---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.security.cases.ediscoverycases.item.reviewsets.item.microsoftgraphsecurityexport.ExportPostRequestBody exportPostRequestBody = new com.microsoft.graph.beta.security.cases.ediscoverycases.item.reviewsets.item.microsoftgraphsecurityexport.ExportPostRequestBody();
exportPostRequestBody.setOutputName("Export via API");
exportPostRequestBody.setDescription("Export for the Contoso investigation");
exportPostRequestBody.setExportOptions(EnumSet.of(com.microsoft.graph.beta.models.security.ExportOptions.OriginalFiles, com.microsoft.graph.beta.models.security.ExportOptions.Tags, com.microsoft.graph.beta.models.security.ExportOptions.SplitSource, com.microsoft.graph.beta.models.security.ExportOptions.IncludeFolderAndPath, com.microsoft.graph.beta.models.security.ExportOptions.FriendlyName, com.microsoft.graph.beta.models.security.ExportOptions.CondensePaths));
exportPostRequestBody.setExportStructure(com.microsoft.graph.beta.models.security.ExportFileStructure.Msg);
graphClient.security().cases().ediscoveryCases().byEdiscoveryCaseId("{ediscoveryCase-id}").reviewSets().byEdiscoveryReviewSetId("{ediscoveryReviewSet-id}").microsoftGraphSecurityExport().post(exportPostRequestBody);


```