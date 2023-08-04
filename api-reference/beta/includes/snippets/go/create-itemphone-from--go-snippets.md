---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewItemPhone()
displayName := "Car Phone"
requestBody.SetDisplayName(&displayName) 
number := "+7 499 342 22 13"
requestBody.SetNumber(&number) 

phones, err := graphClient.Me().Profile().Phones().Post(context.Background(), requestBody, nil)


```