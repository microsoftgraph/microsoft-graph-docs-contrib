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



profileCardProperties, err := graphClient.Organization().ByOrganizationId("organization-id").Settings().ProfileCardProperties().ByProfileCardPropertyId("profileCardProperty-id").Get(context.Background(), nil)


```