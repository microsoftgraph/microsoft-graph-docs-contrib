---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphidentity "github.com/microsoftgraph/msgraph-beta-sdk-go/identity"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphidentity.New$refDeleteRequestBody()
additionalData := map[string]interface{}{
	"odataId" : "https://graph.microsoft.com/beta/identity/userFlowAttributes/city", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.Identity().AuthenticationEventsFlows().ByAuthenticationEventsFlowId("authenticationEventsFlow-id").GraphExternalUsersSelfServiceSignUpEventsFlow().OnAttributeCollection().GraphOnAttributeCollectionExternalUsersSelfServiceSignUp().Attributes().Ref().Delete(context.Background(), requestBody, nil)


```