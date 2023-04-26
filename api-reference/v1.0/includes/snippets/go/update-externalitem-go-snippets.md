---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/External/Connections/Item/Items/Item"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewItem()
additionalData := map[string]interface{}{


 := graphmodels.New()
type := "everyone"
.SetType(&type) 
value := "67a141d8-cf4e-4528-ba07-bed21bfacd2d"
.SetValue(&value) 
accessType := "grant"
.SetAccessType(&accessType) 

	acl := []graphmodels.Objectable {
		,

	}
}
requestBody.SetAdditionalData(additionalData)

graphClient.External().Connections().ByConnectionId("externalConnection-id").Items().ByItemId("externalItem-id").Patch(context.Background(), requestBody, nil)


```