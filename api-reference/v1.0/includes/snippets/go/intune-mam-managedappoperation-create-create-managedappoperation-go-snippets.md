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


requestBody := graphmodels.NewManagedAppOperation()
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
state := "State value"
requestBody.SetState(&state) 
version := "Version value"
requestBody.SetVersion(&version) 

operations, err := graphClient.DeviceAppManagement().ManagedAppRegistrations().ByManagedAppRegistrationId("managedAppRegistration-id").Operations().Post(context.Background(), requestBody, nil)


```