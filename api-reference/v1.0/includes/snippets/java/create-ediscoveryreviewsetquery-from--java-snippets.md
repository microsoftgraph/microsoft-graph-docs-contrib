---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EdiscoveryReviewSetQuery ediscoveryReviewSetQuery = new EdiscoveryReviewSetQuery();
ediscoveryReviewSetQuery.displayName = "My Query 1";
ediscoveryReviewSetQuery.contentQuery = "(Author=\"edison\")";

graphClient.security().cases().ediscoveryCases("58399dff-cebe-478f-b1af-d3227f1fd645").reviewSets("273f11a1-17aa-419c-981d-ff10d33e420f").queries()
	.buildRequest()
	.post(ediscoveryReviewSetQuery);

```