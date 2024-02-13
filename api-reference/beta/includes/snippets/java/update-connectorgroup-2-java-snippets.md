---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ConnectorGroup connectorGroup = new ConnectorGroup();
connectorGroup.setName("name-value");
connectorGroup.setRegion(ConnectorGroupRegion.Nam);
ConnectorGroup result = graphClient.onPremisesPublishingProfiles().byOnPremisesPublishingProfileId("{onPremisesPublishingProfile-id}").connectorGroups().byConnectorGroupId("{connectorGroup-id}").patch(connectorGroup);


```