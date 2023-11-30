---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserSignUpMetricCollectionWithReferencesPage signUps = graphClient.reports().userInsights().monthly().signUps()
	.buildRequest()
	.get();

```