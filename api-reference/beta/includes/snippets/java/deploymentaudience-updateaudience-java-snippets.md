---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<UpdatableAsset> addMembersList = new LinkedList<UpdatableAsset>();
AzureADDevice addMembers = new AzureADDevice();
addMembers.id = "String (identifier)";

addMembersList.add(addMembers);
UpdatableAssetCollectionResponse updatableAssetCollectionResponse = new UpdatableAssetCollectionResponse();
updatableAssetCollectionResponse.value = addMembersList;
UpdatableAssetCollectionPage updatableAssetCollectionPage = new UpdatableAssetCollectionPage(updatableAssetCollectionResponse, null);

graphClient.admin().windows().updates().deploymentAudiences("2d477566-6976-4c2d-97eb-d2acd1c2864e")
	.updateAudience(DeploymentAudienceUpdateAudienceParameterSet
		.newBuilder()
		.withAddMembers(addMembersList)
		.withRemoveMembers(null)
		.withAddExclusions(null)
		.withRemoveExclusions(null)
		.build())
	.buildRequest()
	.post();

```