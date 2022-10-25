---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EdiscoveryReviewTag ediscoveryReviewTag = new EdiscoveryReviewTag();
ediscoveryReviewTag.displayName = "My tag API";
ediscoveryReviewTag.description = "Use Graph API to create tags";
ediscoveryReviewTag.childSelectability = ChildSelectability.MANY;

graphClient.security().cases().ediscoveryCases("58399dff-cebe-478f-b1af-d3227f1fd645").tags()
	.buildRequest()
	.post(ediscoveryReviewTag);

```