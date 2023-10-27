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



windowsHelloForBusinessMethods, err := graphClient.Users().ByUserId("user-id").Authentication().WindowsHelloForBusinessMethods().Get(context.Background(), nil)


```