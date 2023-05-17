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


requestBody := graphmodels.NewCrossTenantAccessPolicy()
allowedCloudEndpoints := []string {
	"microsoftonline.us",
	"partner.microsoftonline.cn",

}
requestBody.SetAllowedCloudEndpoints(allowedCloudEndpoints)

result, err := graphClient.Policies().CrossTenantAccessPolicy().Patch(context.Background(), requestBody, nil)


```