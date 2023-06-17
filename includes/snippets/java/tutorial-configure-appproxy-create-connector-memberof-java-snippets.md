---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ConnectorGroup connectorGroup = new ConnectorGroup();
connectorGroup.additionalDataManager().put("@odata.id", new JsonPrimitive("https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationProxy/connectorGroups/3e6f4c35-a04b-4d03-b98a-66fff89b72e6"));

graphClient.onPremisesPublishingProfiles("applicationProxy").connectors("f2cab422-a1c8-4d70-a47e-2cb297a2e051").memberOf().references()
	.buildRequest()
	.post(connectorGroup);

```