---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ConnectorCollectionWithReferencesPage members = graphClient.onPremisesPublishingProfiles("applicationProxy").connectorGroups("{id}").members()
	.buildRequest()
	.get();

```