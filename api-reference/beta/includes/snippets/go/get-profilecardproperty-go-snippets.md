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



result, err := graphClient.Organization().ByOrganization().Id("organization-id").Settings().ProfileCardProperties().ByProfileCardPropertieId("profileCardProperty-id").Get(context.Background(), nil)


```