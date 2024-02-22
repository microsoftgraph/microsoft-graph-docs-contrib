---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphsecurity "github.com/microsoftgraph/msgraph-sdk-go/security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "locale eq 'en'"

requestParameters := &graphsecurity.SecurityAttackSimulationTrainingItemLanguageDetailItemRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphsecurity.SecurityAttackSimulationTrainingItemLanguageDetailItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

languageDetails, err := graphClient.Security().AttackSimulation().Trainings().ByTrainingId("training-id").LanguageDetails().ByTrainingLanguageDetailId("trainingLanguageDetail-id").Get(context.Background(), configuration)


```