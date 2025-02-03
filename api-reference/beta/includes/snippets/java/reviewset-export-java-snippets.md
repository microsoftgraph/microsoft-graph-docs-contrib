---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.compliance.ediscovery.cases.item.reviewsets.item.microsoftgraphediscoveryexport.ExportPostRequestBody exportPostRequestBody = new com.microsoft.graph.beta.compliance.ediscovery.cases.item.reviewsets.item.microsoftgraphediscoveryexport.ExportPostRequestBody();
exportPostRequestBody.setOutputName("2020-12-06 Contoso investigation export");
exportPostRequestBody.setDescription("Export for the Contoso investigation");
exportPostRequestBody.setExportOptions(EnumSet.of(com.microsoft.graph.beta.models.ediscovery.ExportOptions.OriginalFiles, com.microsoft.graph.beta.models.ediscovery.ExportOptions.FileInfo, com.microsoft.graph.beta.models.ediscovery.ExportOptions.Tags));
exportPostRequestBody.setExportStructure(com.microsoft.graph.beta.models.ediscovery.ExportFileStructure.Directory);
graphClient.compliance().ediscovery().cases().byCaseId("{case-id}").reviewSets().byReviewSetId("{reviewSet-id}").microsoftGraphEdiscoveryExport().post(exportPostRequestBody);


```