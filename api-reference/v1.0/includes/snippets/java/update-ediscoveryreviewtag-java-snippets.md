---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EdiscoveryReviewTag ediscoveryReviewTag = new EdiscoveryReviewTag();
ediscoveryReviewTag.displayName = "My tag API 2";
ediscoveryReviewTag.description = "Use Graph API to create tags (updated)";

graphClient.security().cases().ediscoveryCases("58399dff-cebe-478f-b1af-d3227f1fd645").tags("062de822f17a4a2e9b833aa3f6c37108")
	.buildRequest()
	.patch(ediscoveryReviewTag);

```