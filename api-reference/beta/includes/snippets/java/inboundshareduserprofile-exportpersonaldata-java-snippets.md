---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String storageLocation = "MyStorageAccount";

graphClient.directory().inboundSharedUserProfiles("c228b2ae-c4fb-4eda-9620-7e73dddd1cac")
	.exportPersonalData(InboundSharedUserProfileExportPersonalDataParameterSet
		.newBuilder()
		.withStorageLocation(storageLocation)
		.build())
	.buildRequest()
	.post();

```