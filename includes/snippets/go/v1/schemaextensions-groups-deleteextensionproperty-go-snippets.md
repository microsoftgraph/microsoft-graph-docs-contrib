---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewGroup()
additionalData := map[string]interface{}{
	bellowscollege_courses := null
requestBody.SetBellowscollege_courses(&bellowscollege_courses) 
}
requestBody.SetAdditionalData(additionalData)

groups, err := graphClient.Groups().ByGroupId("group-id").Patch(context.Background(), requestBody, nil)


```