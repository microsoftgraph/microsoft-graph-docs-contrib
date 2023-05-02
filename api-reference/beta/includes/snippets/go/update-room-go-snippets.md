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


requestBody := graphmodels.NewPlace()
additionalData := map[string]interface{}{
	"nickname" : "Conf Room", 
	"building" : "1", 
	"label" : "100", 
	"capacity" : int32(50) , 
	isWheelChairAccessible := false
requestBody.SetIsWheelChairAccessible(&isWheelChairAccessible) 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Places().ByPlaceId("place-id").Patch(context.Background(), requestBody, nil)


```