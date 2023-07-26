---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphorganization "github.com/microsoftgraph/msgraph-beta-sdk-go/organization"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphorganization.NewBrandingDeleteRequestBody()
additionalData := map[string]interface{}{
	"id" : "0", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.Organization().ByOrganization().Id("organization-id").Branding().Delete(context.Background(), requestBody, nil)


```