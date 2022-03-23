---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ApplicationSignInDetailedSummaryCollectionPage applicationSignInDetailedSummary = graphClient.reports().applicationSignInDetailedSummary()
	.buildRequest()
	.get();

```