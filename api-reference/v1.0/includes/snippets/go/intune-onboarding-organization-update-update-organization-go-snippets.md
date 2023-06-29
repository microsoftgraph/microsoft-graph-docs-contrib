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

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewOrganization()
mobileDeviceManagementAuthority := graphmodels.INTUNE_MDMAUTHORITY 
requestBody.SetMobileDeviceManagementAuthority(&mobileDeviceManagementAuthority) 

result, err := graphClient.Organization().ByOrganization().Id("organization-id").Patch(context.Background(), requestBody, nil)


```