---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewPlace()
nickname := "Conf Room"
requestBody.SetNickname(&nickname) 
building := "1"
requestBody.SetBuilding(&building) 
label := "100"
requestBody.SetLabel(&label) 
capacity := int32(50)
requestBody.SetCapacity(&capacity) 
isWheelChairAccessible := false
requestBody.SetIsWheelChairAccessible(&isWheelChairAccessible) 

result, err := graphClient.Places().ByPlaceId("place-id").Patch(context.Background(), requestBody, nil)


```