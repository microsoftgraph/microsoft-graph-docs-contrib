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


requestBody := graphmodels.NewFieldValueSet()
additionalData := map[string]interface{}{
	"color" : "Fuchsia", 
	"quantity" : int32(934) , 
}
requestBody.SetAdditionalData(additionalData)

fields, err := graphClient.Sites().BySiteId("site-id").Lists().ByListId("list-id").Items().ByListItemId("listItem-id").Fields().Patch(context.Background(), requestBody, nil)


```