---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdeviceappmanagement "github.com/microsoftgraph/msgraph-sdk-go/deviceappmanagement"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphdeviceappmanagement.NewTargetAppsPostRequestBody()


managedMobileApp := graphmodels.NewManagedMobileApp()
mobileAppIdentifier := graphmodels.NewAndroidMobileAppIdentifier()
packageId := "Package Id value"
mobileAppIdentifier.SetPackageId(&packageId) 
managedMobileApp.SetMobileAppIdentifier(mobileAppIdentifier)
id := "0a129715-9715-0a12-1597-120a1597120a"
managedMobileApp.SetId(&id) 
version := "Version value"
managedMobileApp.SetVersion(&version) 

apps := []graphmodels.ManagedMobileAppable {
	managedMobileApp,
}
requestBody.SetApps(apps)

graphClient.DeviceAppManagement().ManagedAppPolicies().ByManagedAppPolicyId("managedAppPolicy-id").TargetApps().Post(context.Background(), requestBody, nil)


```