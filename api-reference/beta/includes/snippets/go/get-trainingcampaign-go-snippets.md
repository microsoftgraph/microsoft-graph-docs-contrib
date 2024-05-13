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



trainingCampaigns, err := graphClient.Security().AttackSimulation().TrainingCampaigns().ByTrainingCampaignId("trainingCampaign-id").Get(context.Background(), nil)


```