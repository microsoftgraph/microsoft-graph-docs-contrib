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


requestBody := graphmodels.NewPersonName()
nickname := "Kesha"
requestBody.SetNickname(&nickname) 

result, err := graphClient.Me().Profile().Names().ByNameId("personName-id").Patch(context.Background(), requestBody, nil)


```