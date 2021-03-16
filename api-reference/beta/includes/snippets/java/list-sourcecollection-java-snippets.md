---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ISourceCollectionCollectionPage sourceCollections = graphClient.compliance().ediscovery().cases("{caseId}").sourceCollections()
	.buildRequest()
	.get();

```