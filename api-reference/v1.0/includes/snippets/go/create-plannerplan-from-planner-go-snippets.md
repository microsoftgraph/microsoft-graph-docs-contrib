---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewPlannerPlan()
container := graphmodels.NewPlannerPlanContainer()
url := "https://graph.microsoft.com/beta/groups/ebf3b108-5234-4e22-b93d-656d7dae5874"
container.SetUrl(&url) 
requestBody.SetContainer(container)
title := "title-value"
requestBody.SetTitle(&title) 

result, err := graphClient.Planner().Plans().Post(context.Background(), requestBody, nil)


```