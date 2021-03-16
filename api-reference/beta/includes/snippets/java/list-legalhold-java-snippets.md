---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ILegalHoldCollectionPage legalHolds = graphClient.compliance().ediscovery().cases("{caseId}").legalHolds()
	.buildRequest()
	.get();

```