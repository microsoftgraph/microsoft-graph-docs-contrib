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

requestBody := graphmodels.NewTargetedManagedAppConfiguration()
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
description := "Description value"
requestBody.SetDescription(&description) 
version := "Version value"
requestBody.SetVersion(&version) 


keyValuePair := graphmodels.NewKeyValuePair()
name := "Name value"
keyValuePair.SetName(&name) 
value := "Value value"
keyValuePair.SetValue(&value) 

customSettings := []graphmodels.KeyValuePairable {
	keyValuePair,
}
requestBody.SetCustomSettings(customSettings)
deployedAppCount := int32(0)
requestBody.SetDeployedAppCount(&deployedAppCount) 
isAssigned := true
requestBody.SetIsAssigned(&isAssigned) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
targetedManagedAppConfigurations, err := graphClient.DeviceAppManagement().TargetedManagedAppConfigurations().ByTargetedManagedAppConfigurationId("targetedManagedAppConfiguration-id").Patch(context.Background(), requestBody, nil)


```