---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphusers.NewAssignLicensePostRequestBody()
addLicenses := []graphusers.AssignedLicenseable {

}
requestBody.SetAddLicenses(addLicenses)
removeLicenses := []string {
 := uuid.MustParse("f30db892-07e9-47e9-837c-80727f46fd3d")
requestBody.Set(&) 
 := uuid.MustParse("84a661c4-e949-4bd2-a560-ed7766fcaf2b")
requestBody.Set(&) 

}
requestBody.SetRemoveLicenses(removeLicenses)

result, err := graphClient.Me().AssignLicense().Post(context.Background(), requestBody, nil)


```