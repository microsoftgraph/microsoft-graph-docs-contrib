---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SourceCollection sourceCollection = new SourceCollection();
sourceCollection.id = "1a9b4145d8f84e39bc45a7f68c5c5119";

EnumSet<DataCollectionScope> additionalData = EnumSet.of(DataCollectionScope.LINKED_FILES);

graphClient.compliance().ediscovery().cases("080e8cad-f21f-4452-8826-0ddf7e949fdd").reviewSets("6fe25d32-8167-4625-b75c-c4181ccbd9d5")
	.addToReviewSet(sourceCollection,additionalData)
	.buildRequest()
	.post();

```