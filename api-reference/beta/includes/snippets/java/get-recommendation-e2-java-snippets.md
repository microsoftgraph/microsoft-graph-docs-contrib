---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RecommendationCollectionPage recommendations = graphClient.directory().recommendations()
	.buildRequest()
	.filter("recommendationType eq 'turnOffPerUserMFA'")
	.get();

```