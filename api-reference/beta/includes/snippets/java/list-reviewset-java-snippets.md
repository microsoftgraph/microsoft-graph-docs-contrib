---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IReviewSetCollectionPage reviewSets = graphClient.compliance().ediscovery().cases("{caseId}").reviewSets()
	.buildRequest()
	.get();

```