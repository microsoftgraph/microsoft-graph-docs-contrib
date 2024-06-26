---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OnPremisesAgentGroup onPremisesAgentGroup = new OnPremisesAgentGroup();
onPremisesAgentGroup.setDisplayName("Group New Name");
OnPremisesAgentGroup result = graphClient.onPremisesPublishingProfiles().byOnPremisesPublishingProfileId("{onPremisesPublishingProfile-id}").agentGroups().byOnPremisesAgentGroupId("{onPremisesAgentGroup-id}").patch(onPremisesAgentGroup);


```