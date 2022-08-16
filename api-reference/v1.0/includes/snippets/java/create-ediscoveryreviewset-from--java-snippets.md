---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EdiscoveryReviewSet ediscoveryReviewSet = new EdiscoveryReviewSet();
ediscoveryReviewSet.displayName = "My review set 2";

graphClient.security().cases().ediscoveryCases("b0073e4e-4184-41c6-9eb7-8c8cc3e2288b").reviewSets()
	.buildRequest()
	.post(ediscoveryReviewSet);

```