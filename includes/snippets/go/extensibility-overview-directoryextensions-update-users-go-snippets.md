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


requestBody := graphmodels.NewUser()
additionalData := map[string]interface{}{
	extension_b7d8e648520f41d3b9c0fdeb91768a0a_permanent_pensionable := null
requestBody.SetExtension_b7d8e648520f41d3b9c0fdeb91768a0a_permanent_pensionable(&extension_b7d8e648520f41d3b9c0fdeb91768a0a_permanent_pensionable) 
	"extension_b7d8e648520f41d3b9c0fdeb91768a0a_jobGroupTracker" : "E4", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Users().ByUserId("user-id").Patch(context.Background(), requestBody, nil)


```