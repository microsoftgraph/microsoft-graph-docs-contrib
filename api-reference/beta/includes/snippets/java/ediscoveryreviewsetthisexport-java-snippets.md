---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String outputName = "Export via API";

String description = "Export for the Contoso investigation";

EnumSet<ExportOptions> exportOptions = EnumSet.of(ExportOptions.ORIGINAL_FILES,ExportOptions.FILE_INFO,ExportOptions.TAGS);

ExportFileStructure exportStructure = ExportFileStructure.DIRECTORY;

graphClient.security().cases().ediscoveryCases("58399dff-cebe-478f-b1af-d3227f1fd645").reviewSets("273f11a1-17aa-419c-981d-ff10d33e420f")
	.export(EdiscoveryReviewSetExportParameterSet
		.newBuilder()
		.withOutputName(outputName)
		.withDescription(description)
		.withAzureBlobContainer(null)
		.withAzureBlobToken(null)
		.withExportOptions(exportOptions)
		.withExportStructure(exportStructure)
		.build())
	.buildRequest()
	.post();

```