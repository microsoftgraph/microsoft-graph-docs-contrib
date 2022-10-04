---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ConnectorGroupCollectionWithReferencesPage memberOf = graphClient.onPremisesPublishingProfiles("applicationProxy").connectors("{id}").memberOf()
	.buildRequest()
	.get();

```