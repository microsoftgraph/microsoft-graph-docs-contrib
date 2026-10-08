---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphsecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/security"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/models/security"
	  //other-imports
)

requestBody := graphsecurity.NewCreateAlertPostRequestBody()
createAlertInput := graphmodelssecurity.NewCreateAlertInput()
title := "Suspicious PowerShell activity"
createAlertInput.SetTitle(&title) 
severity := graphmodels.MEDIUM_ALERTSEVERITY 
createAlertInput.SetSeverity(&severity) 
description := "PowerShell script execution was identified during analyst triage."
createAlertInput.SetDescription(&description) 
category := "Execution"
createAlertInput.SetCategory(&category) 
recommendedActions := "Review the script contents and isolate the affected device."
createAlertInput.SetRecommendedActions(&recommendedActions) 
mitreTechniques := []string {
	"T1059.001",
}
createAlertInput.SetMitreTechniques(mitreTechniques)
linkToIncident := int64(42)
createAlertInput.SetLinkToIncident(&linkToIncident) 
isExcludedFromCorrelation := false
createAlertInput.SetIsExcludedFromCorrelation(&isExcludedFromCorrelation) 


entityDefinition := graphmodelssecurity.NewEntityDefinition()
entityType := graphmodels.DEVICE_MANUALALERTENTITYTYPE 
entityDefinition.SetEntityType(&entityType) 
entityIdentifier := "deviceId"
entityDefinition.SetEntityIdentifier(&entityIdentifier) 
identifierValue := "d1234567-abcd-4f01-8abc-890123456789"
entityDefinition.SetIdentifierValue(&identifierValue) 
role := graphmodels.IMPACTED_ENTITYDEFINITIONINPUTROLE 
entityDefinition.SetRole(&role) 

entityDefinitions := []graphmodelssecurity.EntityDefinitionable {
	entityDefinition,
}
createAlertInput.SetEntityDefinitions(entityDefinitions)
requestBody.SetCreateAlertInput(createAlertInput)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
microsoftGraphSecurityCreateAlert, err := graphClient.Security().Alerts_v2().MicrosoftGraphSecurityCreateAlert().Post(context.Background(), requestBody, nil)


```