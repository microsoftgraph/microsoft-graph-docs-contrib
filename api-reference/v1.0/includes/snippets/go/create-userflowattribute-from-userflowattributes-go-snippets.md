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


requestBody := graphmodels.NewIdentityUserFlowAttribute()
displayName := "Hobby"
requestBody.SetDisplayName(&displayName) 
description := "Your hobby"
requestBody.SetDescription(&description) 
dataType := graphmodels.STRING_IDENTITYUSERFLOWATTRIBUTEDATATYPE 
requestBody.SetDataType(&dataType) 

result, err := graphClient.Identity().UserFlowAttributes().Post(context.Background(), requestBody, nil)


```