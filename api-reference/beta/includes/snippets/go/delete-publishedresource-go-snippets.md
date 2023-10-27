---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



graphClient.OnPremisesPublishingProfiles().ByOnPremisesPublishingProfileId("onPremisesPublishingProfile-id").PublishedResources().ByPublishedResourceId("publishedResource-id").AgentGroups().ByOnPremisesAgentGroupId("onPremisesAgentGroup-id").Ref().Delete(context.Background(), nil)


```