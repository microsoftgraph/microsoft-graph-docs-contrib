---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewEducationClass()
description := "Health Level 1"
requestBody.SetDescription(&description) 
classCode := "Health 501"
requestBody.SetClassCode(&classCode) 
displayName := "Health 1"
requestBody.SetDisplayName(&displayName) 
externalId := "11019"
requestBody.SetExternalId(&externalId) 
externalName := "Health Level 1"
requestBody.SetExternalName(&externalName) 
externalSource := graphmodels.SIS_EDUCATIONEXTERNALSOURCE 
requestBody.SetExternalSource(&externalSource) 
mailNickname := "fineartschool.net"
requestBody.SetMailNickname(&mailNickname) 

result, err := graphClient.Education().Classes().Post(context.Background(), requestBody, nil)


```