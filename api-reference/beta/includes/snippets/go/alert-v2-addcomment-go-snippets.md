---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/models/security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelssecurity.NewAlertComment()
comment := "Demo for docs"
requestBody.SetComment(&comment) 

comments, err := graphClient.Security().Alerts_v2().ByAlertId("alert-id").Comments().PostAsCommentsPostResponse(context.Background(), requestBody, nil)


```