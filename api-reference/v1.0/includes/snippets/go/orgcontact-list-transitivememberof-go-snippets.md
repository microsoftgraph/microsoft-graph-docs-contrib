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



transitiveMemberOf, err := graphClient.Contacts().ByOrgContactId("orgContact-id").TransitiveMemberOf().Get(context.Background(), nil)


```