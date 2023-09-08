---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphgroups "github.com/microsoftgraph/msgraph-beta-sdk-go/groups"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphgroups.NewAssignLicensePostRequestBody()
addLicenses := []graphmodels.AssignedLicenseable {

}
requestBody.SetAddLicenses(addLicenses)
removeLicenses := []uuid.UUID {
	uuid.MustParse("c7df2760-2c81-4ef7-b578-5b5392b571df"),
	uuid.MustParse("b05e124f-c7cc-45a0-a6aa-8cf78c946968"),
}
requestBody.SetRemoveLicenses(removeLicenses)

assignLicense, err := graphClient.Groups().ByGroupId("group-id").AssignLicense().Post(context.Background(), requestBody, nil)


```