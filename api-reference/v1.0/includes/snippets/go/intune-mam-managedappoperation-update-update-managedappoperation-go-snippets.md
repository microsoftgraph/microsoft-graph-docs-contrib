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


requestBody := graphmodels.NewManagedAppOperation()
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
state := "State value"
requestBody.SetState(&state) 
version := "Version value"
requestBody.SetVersion(&version) 

result, err := graphClient.DeviceAppManagement().ManagedAppRegistrations().ByManagedAppRegistrationId("managedAppRegistration-id").Operations().ByOperationId("managedAppOperation-id").Patch(context.Background(), requestBody, nil)


```