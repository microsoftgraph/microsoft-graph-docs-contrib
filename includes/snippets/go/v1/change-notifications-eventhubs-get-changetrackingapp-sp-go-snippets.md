---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



appId := "{appId}"
servicePrincipals, err := graphClient.ServicePrincipalsWithAppId(&appId).Get(context.Background(), nil)


```