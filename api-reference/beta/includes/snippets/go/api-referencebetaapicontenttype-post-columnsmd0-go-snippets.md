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


requestBody := graphmodels.NewColumnDefinition()
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/beta/sites/root/columns/99ddcf45-e2f7-4f17-82b0-6fba34445103", 
}
requestBody.SetAdditionalData(additionalData)

columns, err := graphClient.Sites().BySiteId("site-id").ContentTypes().ByContentTypeId("contentType-id").Columns().Post(context.Background(), requestBody, nil)


```