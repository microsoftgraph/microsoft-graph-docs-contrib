---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodelsidentitygovernance "github.com/microsoftgraph/msgraph-sdk-go/models/identitygovernance"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodelsidentitygovernance.NewLifecycleManagementSettings()
workflowScheduleIntervalInHours := int32(3)
requestBody.SetWorkflowScheduleIntervalInHours(&workflowScheduleIntervalInHours) 
emailSettings := graphmodels.NewEmailSettings()
senderDomain := "ContosoIndustries.net"
emailSettings.SetSenderDomain(&senderDomain) 
useCompanyBranding := true
emailSettings.SetUseCompanyBranding(&useCompanyBranding) 
requestBody.SetEmailSettings(emailSettings)
additionalData := map[string]interface{}{
	"odataContext" : "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/lifecycleWorkflows/settings/$entity", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
settings, err := graphClient.IdentityGovernance().LifecycleWorkflows().Settings().Patch(context.Background(), requestBody, nil)


```