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


requestBody := graphmodels.NewManagedMobileApp()
mobileAppIdentifier := graphmodels.NewAndroidMobileAppIdentifier()
packageId := "Package Id value"
mobileAppIdentifier.SetPackageId(&packageId) 
requestBody.SetMobileAppIdentifier(mobileAppIdentifier)
version := "Version value"
requestBody.SetVersion(&version) 

result, err := graphClient.DeviceAppManagement().IosManagedAppProtections().ByIosManagedAppProtectionId("iosManagedAppProtection-id").Apps().ByAppId("managedMobileApp-id").Patch(context.Background(), requestBody, nil)


```