---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
places, err := graphClient.Places().ByPlaceId("place-id").Patch(context.Background(), requestBody, nil)


```