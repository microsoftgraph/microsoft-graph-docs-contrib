---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//identityGovernance"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCustomTaskExtension()
displayName := "Grant manager access to mailbox and OneDrive"
requestBody.SetDisplayName(&displayName) 
description := "Grant manager access to mailbox and OneDrive"
requestBody.SetDescription(&description) 
endpointConfiguration := graphmodels.NewCustomExtensionEndpointConfiguration()
additionalData := map[string]interface{}{
	"subscriptionId" : "c500b67c-e9b7-4ad2-a90d-77d41385ae55", 
	"resourceGroupName" : "RG-LCM", 
	"logicAppWorkflowName" : "ManagerAccess", 
}
endpointConfiguration.SetAdditionalData(additionalData)
requestBody.SetEndpointConfiguration(endpointConfiguration)
authenticationConfiguration := graphmodels.NewCustomExtensionAuthenticationConfiguration()
additionalData := map[string]interface{}{
	"resourceId" : "542dc01a-0b5d-4edc-b3f9-5cfe6393f557", 
}
authenticationConfiguration.SetAdditionalData(additionalData)
requestBody.SetAuthenticationConfiguration(authenticationConfiguration)
clientConfiguration := graphmodels.NewCustomExtensionClientConfiguration()
timeoutInMilliseconds := int32(1000)
clientConfiguration.SetTimeoutInMilliseconds(&timeoutInMilliseconds) 
additionalData := map[string]interface{}{
	"maximumRetries" : int32(1) , 
}
clientConfiguration.SetAdditionalData(additionalData)
requestBody.SetClientConfiguration(clientConfiguration)
callbackConfiguration := graphmodels.NewCustomExtensionCallbackConfiguration()
timeoutDuration , err := abstractions.ParseISODuration("PT5M")
callbackConfiguration.SetTimeoutDuration(&timeoutDuration) 
requestBody.SetCallbackConfiguration(callbackConfiguration)

result, err := graphClient.IdentityGovernance().LifecycleWorkflows().CustomTaskExtensions().Post(context.Background(), requestBody, nil)


```