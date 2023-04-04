---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewB2cIdentityUserFlow()
id := "UserFlowWithAPIConnector"
requestBody.SetId(&id) 
userFlowType := graphmodels.SIGNUPORSIGNIN_USERFLOWTYPE 
requestBody.SetUserFlowType(&userFlowType) 
userFlowTypeVersion := float32(1)
requestBody.SetUserFlowTypeVersion(&userFlowTypeVersion) 
apiConnectorConfiguration := graphmodels.NewUserFlowApiConnectorConfiguration()
postFederationSignup := graphmodels.NewIdentityApiConnector()
additionalData := map[string]interface{}{
	"odataId" : "{apiConnectorId}", 
}
postFederationSignup.SetAdditionalData(additionalData)
apiConnectorConfiguration.SetPostFederationSignup(postFederationSignup)
postAttributeCollection := graphmodels.NewIdentityApiConnector()
additionalData := map[string]interface{}{
	"odataId" : "{apiConnectorId}", 
}
postAttributeCollection.SetAdditionalData(additionalData)
apiConnectorConfiguration.SetPostAttributeCollection(postAttributeCollection)
requestBody.SetApiConnectorConfiguration(apiConnectorConfiguration)

result, err := graphClient.Identity().B2cUserFlows().Post(context.Background(), requestBody, nil)


```