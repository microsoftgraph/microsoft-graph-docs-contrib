---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphusers.NewItemAssignLicensePostRequestBody()
addLicenses := []graphmodels.AssignedLicenseable {

}
requestBody.SetAddLicenses(addLicenses)
removeLicenses := []uuid.UUID {
	uuid.MustParse("f30db892-07e9-47e9-837c-80727f46fd3d"),
	uuid.MustParse("84a661c4-e949-4bd2-a560-ed7766fcaf2b"),
}
requestBody.SetRemoveLicenses(removeLicenses)

assignLicense, err := graphClient.Me().AssignLicense().Post(context.Background(), requestBody, nil)


```