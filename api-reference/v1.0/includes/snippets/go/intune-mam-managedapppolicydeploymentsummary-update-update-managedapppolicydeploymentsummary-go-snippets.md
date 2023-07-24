---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewManagedAppPolicyDeploymentSummary()
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
configurationDeployedUserCount := int32(14)
requestBody.SetConfigurationDeployedUserCount(&configurationDeployedUserCount) 
lastRefreshTime , err := time.Parse(time.RFC3339, "2017-01-01T00:01:30.1240368-08:00")
requestBody.SetLastRefreshTime(&lastRefreshTime) 


managedAppPolicyDeploymentSummaryPerApp := graphmodels.NewManagedAppPolicyDeploymentSummaryPerApp()
mobileAppIdentifier := graphmodels.NewAndroidMobileAppIdentifier()
packageId := "Package Id value"
mobileAppIdentifier.SetPackageId(&packageId) 
managedAppPolicyDeploymentSummaryPerApp.SetMobileAppIdentifier(mobileAppIdentifier)
configurationAppliedUserCount := int32(13)
managedAppPolicyDeploymentSummaryPerApp.SetConfigurationAppliedUserCount(&configurationAppliedUserCount) 

configurationDeploymentSummaryPerApp := []graphmodels.ManagedAppPolicyDeploymentSummaryPerAppable {
	managedAppPolicyDeploymentSummaryPerApp,
}
requestBody.SetConfigurationDeploymentSummaryPerApp(configurationDeploymentSummaryPerApp)
version := "Version value"
requestBody.SetVersion(&version) 

result, err := graphClient.DeviceAppManagement().IosManagedAppProtections().ByIosManagedAppProtectionId("iosManagedAppProtection-id").DeploymentSummary().Patch(context.Background(), requestBody, nil)


```