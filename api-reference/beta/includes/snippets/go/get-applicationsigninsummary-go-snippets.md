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



getAzureADApplicationSignInSummary(period='{period}'), err := graphClient.Reports().GetAzureADApplicationSignInSummary(period='{period}')().Get(context.Background(), nil)


```