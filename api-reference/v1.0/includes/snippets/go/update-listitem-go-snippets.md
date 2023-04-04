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


requestBody := graphmodels.NewFieldValueSet()
additionalData := map[string]interface{}{
	"color" : "Fuchsia", 
	"quantity" : int32(934) , 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.SitesById("site-id").ListsById("list-id").ItemsById("listItem-id").Fields().Patch(context.Background(), requestBody, nil)


```