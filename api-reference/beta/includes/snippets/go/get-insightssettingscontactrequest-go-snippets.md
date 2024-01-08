---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



contactInsights, err := graphClient.Organization().ByOrganizationId("organization-id").Settings().ContactInsights().Get(context.Background(), nil)


```