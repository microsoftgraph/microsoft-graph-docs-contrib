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


requestBody := graphmodels.NewAuthorizationPolicy()
enabledPreviewFeatures := []string {
	"assignGroupsToRoles",

}
requestBody.SetEnabledPreviewFeatures(enabledPreviewFeatures)

result, err := graphClient.Policies().AuthorizationPolicy().ByAuthorizationPolicy().Id("authorizationPolicy-id").Patch(context.Background(), requestBody, nil)


```