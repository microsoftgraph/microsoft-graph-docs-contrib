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


requestBody := graphmodels.NewPermission()
roles := []string {
	"read",
}
requestBody.SetRoles(roles)

result, err := graphClient.Sites().BySiteId("site-id").Permissions().ByPermissionId("permission-id").Patch(context.Background(), requestBody, nil)


```