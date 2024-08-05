---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewManagedMobileApp()
mobileAppIdentifier := graphmodels.NewAndroidMobileAppIdentifier()
packageId := "Package Id value"
mobileAppIdentifier.SetPackageId(&packageId) 
requestBody.SetMobileAppIdentifier(mobileAppIdentifier)
version := "Version value"
requestBody.SetVersion(&version) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
apps, err := graphClient.DeviceAppManagement().IosManagedAppProtections().ByIosManagedAppProtectionId("iosManagedAppProtection-id").Apps().Post(context.Background(), requestBody, nil)


```