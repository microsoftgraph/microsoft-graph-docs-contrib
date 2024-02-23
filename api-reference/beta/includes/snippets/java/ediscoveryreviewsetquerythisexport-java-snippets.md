---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.security.cases.ediscoverycases.item.reviewsets.item.queries.item.microsoftgraphsecurityexport.ExportPostRequestBody exportPostRequestBody = new com.microsoft.graph.beta.security.cases.ediscoverycases.item.reviewsets.item.queries.item.microsoftgraphsecurityexport.ExportPostRequestBody();
exportPostRequestBody.setOutputName("Export reviewset query via API");
exportPostRequestBody.setDescription("Export for the Contoso investigation 2");
exportPostRequestBody.setExportOptions(EnumSet.of(com.microsoft.graph.beta.models.security.ExportOptions.OriginalFiles, com.microsoft.graph.beta.models.security.ExportOptions.FileInfo, com.microsoft.graph.beta.models.security.ExportOptions.Tags));
exportPostRequestBody.setExportStructure(com.microsoft.graph.beta.models.security.ExportFileStructure.Directory);
graphClient.security().cases().ediscoveryCases().byEdiscoveryCaseId("{ediscoveryCase-id}").reviewSets().byEdiscoveryReviewSetId("{ediscoveryReviewSet-id}").queries().byEdiscoveryReviewSetQueryId("{ediscoveryReviewSetQuery-id}").microsoftGraphSecurityExport().post(exportPostRequestBody);


```