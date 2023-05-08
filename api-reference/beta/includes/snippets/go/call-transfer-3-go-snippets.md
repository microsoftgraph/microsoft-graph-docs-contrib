---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Communications/Calls/Item/Transfer"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewTransferPostRequestBody()
transferTarget := graphmodels.NewInvitationParticipantInfo()
endpointType := graphmodels.DEFAULT_ENDPOINTTYPE 
transferTarget.SetEndpointType(&endpointType) 
identity := graphmodels.NewIdentitySet()
additionalData := map[string]interface{}{
phone := graphmodels.New()
id := "+12345678901"
phone.SetId(&id) 
	identity.SetPhone(phone)
}
identity.SetAdditionalData(additionalData)
transferTarget.SetIdentity(identity)
additionalData := map[string]interface{}{
	"languageId" : "languageId-value", 
	"region" : "region-value", 
}
transferTarget.SetAdditionalData(additionalData)
requestBody.SetTransferTarget(transferTarget)

graphClient.Communications().Calls().ByCallId("call-id").Transfer().Post(context.Background(), requestBody, nil)


```