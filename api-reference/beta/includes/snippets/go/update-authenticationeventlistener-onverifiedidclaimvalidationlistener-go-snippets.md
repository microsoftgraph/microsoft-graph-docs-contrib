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

requestBody := graphmodels.NewAuthenticationEventListener()
displayName := "Verified ID Claim Validation Listener (updated)"
requestBody.SetDisplayName(&displayName) 
additionalData := map[string]interface{}{
handler := graph.New()
configuration := graph.New()
clientConfiguration := graph.New()
maximumRetries := int32(1)
clientConfiguration.SetMaximumRetries(&maximumRetries) 
timeoutInMilliseconds := int32(2000)
clientConfiguration.SetTimeoutInMilliseconds(&timeoutInMilliseconds) 
	configuration.SetClientConfiguration(clientConfiguration)
behaviorOnError := graph.New()
	configuration.SetBehaviorOnError(behaviorOnError)
	handler.SetConfiguration(configuration)
	requestBody.SetHandler(handler)
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
authenticationEventListeners, err := graphClient.Identity().AuthenticationEventListeners().ByAuthenticationEventListenerId("authenticationEventListener-id").Patch(context.Background(), requestBody, nil)


```