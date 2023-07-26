---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphapplications "github.com/microsoftgraph/msgraph-beta-sdk-go/applications"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphapplications.NewApplication()
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