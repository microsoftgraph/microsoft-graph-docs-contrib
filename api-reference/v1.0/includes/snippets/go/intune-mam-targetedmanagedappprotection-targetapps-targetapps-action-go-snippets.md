---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdeviceappmanagement "github.com/microsoftgraph/msgraph-sdk-go/deviceappmanagement"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

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
additionalData := map[string]interface{}{
	"appGroupType" : "allCoreMicrosoftApps", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.DeviceAppManagement().ManagedAppPolicies().ByManagedAppPolicyId("managedAppPolicy-id").TargetApps().Post(context.Background(), requestBody, nil)


```