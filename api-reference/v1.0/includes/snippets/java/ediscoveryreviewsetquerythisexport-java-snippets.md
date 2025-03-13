---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.security.cases.ediscoverycases.item.reviewsets.item.queries.item.microsoftgraphsecurityexport.ExportPostRequestBody exportPostRequestBody = new com.microsoft.graph.security.cases.ediscoverycases.item.reviewsets.item.queries.item.microsoftgraphsecurityexport.ExportPostRequestBody();
exportPostRequestBody.setOutputName("Export reviewset query via API");
exportPostRequestBody.setDescription("Export for the Contoso investigation 2");
exportPostRequestBody.setExportOptions(EnumSet.of(com.microsoft.graph.models.security.ExportOptions.OriginalFiles, com.microsoft.graph.models.security.ExportOptions.Tags));
exportPostRequestBody.setExportStructure(com.microsoft.graph.models.security.ExportFileStructure.Directory);
graphClient.security().cases().ediscoveryCases().byEdiscoveryCaseId("{ediscoveryCase-id}").reviewSets().byEdiscoveryReviewSetId("{ediscoveryReviewSet-id}").queries().byEdiscoveryReviewSetQueryId("{ediscoveryReviewSetQuery-id}").microsoftGraphSecurityExport().post(exportPostRequestBody);


```