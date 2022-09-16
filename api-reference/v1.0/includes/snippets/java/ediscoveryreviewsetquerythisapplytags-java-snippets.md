---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<EdiscoveryReviewTag> tagsToAddList = new LinkedList<EdiscoveryReviewTag>();
EdiscoveryReviewTag tagsToAdd = new EdiscoveryReviewTag();
tagsToAdd.id = "d3d99dc704a74801b792b3e1e722aa0d";

tagsToAddList.add(tagsToAdd);
EdiscoveryReviewTagCollectionResponse ediscoveryReviewTagCollectionResponse = new EdiscoveryReviewTagCollectionResponse();
ediscoveryReviewTagCollectionResponse.value = tagsToAddList;
EdiscoveryReviewTagCollectionPage ediscoveryReviewTagCollectionPage = new EdiscoveryReviewTagCollectionPage(ediscoveryReviewTagCollectionResponse, null);

graphClient.security().cases().ediscoveryCases("58399dff-cebe-478f-b1af-d3227f1fd645").reviewSets("63ef0fd7-0db2-45eb-a9d7-7d75c8239873").queries("5f426fdc-f027-40db-b7cc-453cf06dc996")
	.applyTags(EdiscoveryReviewSetQueryApplyTagsParameterSet
		.newBuilder()
		.withTagsToAdd(tagsToAddList)
		.withTagsToRemove(null)
		.build())
	.buildRequest()
	.post();

```