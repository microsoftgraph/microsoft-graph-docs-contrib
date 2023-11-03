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
type := graphmodels.OTHER_PHONETYPE 
requestBody.SetType(&type) 

phones, err := graphClient.Users().ByUserId("user-id").Profile().Phones().ByItemPhoneId("itemPhone-id").Patch(context.Background(), requestBody, nil)


```