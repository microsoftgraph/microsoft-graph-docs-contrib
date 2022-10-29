---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EdiscoverySearch search = new EdiscoverySearch();
search.id = "c17e91d6-6bc0-4ecb-b388-269ea3d4ffb7";

EnumSet<AdditionalDataOptions> additionalDataOptions = EnumSet.of(AdditionalDataOptions.LINKED_FILES);

graphClient.security().cases().ediscoveryCases("58399dff-cebe-478f-b1af-d3227f1fd645").reviewSets("63ef0fd7-0db2-45eb-a9d7-7d75c8239873")
	.addToReviewSet(EdiscoveryReviewSetAddToReviewSetParameterSet
		.newBuilder()
		.withSearch(search)
		.withAdditionalDataOptions(additionalDataOptions)
		.build())
	.buildRequest()
	.post();

```