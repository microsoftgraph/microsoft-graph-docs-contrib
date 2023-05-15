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


requestBody := graphmodels.NewExtension()
additionalData := map[string]interface{}{
	"theme" : "light", 
	"color" : "yellow", 
	"lang" : "Swahili", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Me().Extensions().ByExtensionId("extension-id").Patch(context.Background(), requestBody, nil)


```