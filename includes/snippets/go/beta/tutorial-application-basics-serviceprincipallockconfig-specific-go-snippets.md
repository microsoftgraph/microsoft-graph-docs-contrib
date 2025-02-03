---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewApplication()
servicePrincipalLockConfiguration := graphmodels.NewServicePrincipalLockConfiguration()
isEnabled := true
servicePrincipalLockConfiguration.SetIsEnabled(&isEnabled) 
credentialsWithUsageSign := true
servicePrincipalLockConfiguration.SetCredentialsWithUsageSign(&credentialsWithUsageSign) 
credentialsWithUsageVerify := true
servicePrincipalLockConfiguration.SetCredentialsWithUsageVerify(&credentialsWithUsageVerify) 
requestBody.SetServicePrincipalLockConfiguration(servicePrincipalLockConfiguration)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
applications, err := graphClient.Applications().ByApplicationId("application-id").Patch(context.Background(), requestBody, nil)


```