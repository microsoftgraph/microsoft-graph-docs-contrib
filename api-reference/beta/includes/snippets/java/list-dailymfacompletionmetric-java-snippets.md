---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MfaCompletionMetricCollectionWithReferencesPage mfaCompletions = graphClient.reports().userInsights().daily().mfaCompletions()
	.buildRequest()
	.get();

```