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

targetedManagedAppConfigurations, err := graphClient.DeviceAppManagement().TargetedManagedAppConfigurations().Post(context.Background(), requestBody, nil)


```