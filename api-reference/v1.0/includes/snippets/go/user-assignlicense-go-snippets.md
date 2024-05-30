---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-sdk-go/users"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphusers.NewItemAssignLicensePostRequestBody()


assignedLicense := graphmodels.NewAssignedLicense()
disabledPlans := []uuid.UUID {
	uuid.MustParse("11b0131d-43c8-4bbb-b2c8-e80f9a50834a"),
}
assignedLicense.SetDisabledPlans(disabledPlans)
skuId := uuid.MustParse("45715bb8-13f9-4bf6-927f-ef96c102d394")
assignedLicense.SetSkuId(&skuId) 

addLicenses := []graphmodels.AssignedLicenseable {
	assignedLicense,
}
requestBody.SetAddLicenses(addLicenses)
removeLicenses := []uuid.UUID {
	uuid.MustParse("bea13e0c-3828-4daa-a392-28af7ff61a0f"),
}
requestBody.SetRemoveLicenses(removeLicenses)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
assignLicense, err := graphClient.Me().AssignLicense().Post(context.Background(), requestBody, nil)


```