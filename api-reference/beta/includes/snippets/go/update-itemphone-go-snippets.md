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


requestBody := graphmodels.NewItemPhone()
type := graphmodels.OTHER_PHONETYPE 
requestBody.SetType(&type) 

result, err := graphClient.UsersById("user-id").Profile().PhonesById("itemPhone-id").Patch(context.Background(), requestBody, nil)


```