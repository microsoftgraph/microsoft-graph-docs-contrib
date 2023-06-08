---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphgroups "github.com/microsoftgraph/msgraph-sdk-go/groups"
	  //other-imports
)

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphgroups.NewAssignLicensePostRequestBody()
addLicenses := []graphgroups.AssignedLicenseable {

}
requestBody.SetAddLicenses(addLicenses)
removeLicenses := []string {
 := uuid.MustParse("c7df2760-2c81-4ef7-b578-5b5392b571df")
requestBody.Set(&) 
 := uuid.MustParse("b05e124f-c7cc-45a0-a6aa-8cf78c946968")
requestBody.Set(&) 

}
requestBody.SetRemoveLicenses(removeLicenses)

result, err := graphClient.Groups().ByGroupId("group-id").AssignLicense().Post(context.Background(), requestBody, nil)


```