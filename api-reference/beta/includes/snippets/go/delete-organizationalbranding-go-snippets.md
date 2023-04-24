---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Organization/Item/Branding"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewBrandingDeleteRequestBody()
additionalData := map[string]interface{}{
	"id" : "0", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.Organization().ByOrganization().Id("organization-id").Branding().Delete(context.Background(), requestBody, nil)


```