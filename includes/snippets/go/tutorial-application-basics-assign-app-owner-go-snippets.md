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


requestBody := graphmodels.NewReferenceCreate()
odataId := "https://graph.microsoft.com/v1.0/directoryObjects/8afc02cb-4d62-4dba-b536-9f6d73e9be26"
requestBody.SetOdataId(&odataId) 

graphClient.Applications().ByApplicationId("application-id").Owners().Ref().Post(context.Background(), requestBody, nil)


```