---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Applications/Item"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewApplication()
additionalData := map[string]interface{}{
onPremisesPublishing := graphmodels.New()
singleSignOnSettings := graphmodels.New()
kerberosSignOnSettings := graphmodels.New()
kerberosServicePrincipalName := "HTTP/iwademo.contoso.com"
kerberosSignOnSettings.SetKerberosServicePrincipalName(&kerberosServicePrincipalName) 
kerberosSignOnMappingAttributeType := "userPrincipalName"
kerberosSignOnSettings.SetKerberosSignOnMappingAttributeType(&kerberosSignOnMappingAttributeType) 
	singleSignOnSettings.SetKerberosSignOnSettings(kerberosSignOnSettings)
singleSignOnMode := "onPremisesKerberos"
singleSignOnSettings.SetSingleSignOnMode(&singleSignOnMode) 
	onPremisesPublishing.SetSingleSignOnSettings(singleSignOnSettings)
	requestBody.SetOnPremisesPublishing(onPremisesPublishing)
}
requestBody.SetAdditionalData(additionalData)

graphClient.Applications().ByApplicationId("application-id").Patch(context.Background(), requestBody, nil)


```