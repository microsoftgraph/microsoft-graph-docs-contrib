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


requestBody := graphmodels.NewItemPatent()
number := "USPTO-3954432633"
requestBody.SetNumber(&number) 
webUrl := "https://patents.gov/3954432633"
requestBody.SetWebUrl(&webUrl) 

patents, err := graphClient.Users().ByUserId("user-id").Profile().Patents().ByItemPatentId("itemPatent-id").Patch(context.Background(), requestBody, nil)


```