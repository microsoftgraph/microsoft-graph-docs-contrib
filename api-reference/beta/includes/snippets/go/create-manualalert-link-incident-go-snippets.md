---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/models/security"
	  //other-imports
)

requestBody := graphmodelssecurity.NewAlert()
title := "Malicious file detected on device"
requestBody.SetTitle(&title) 
description := "Sandbox analysis revealed malicious behavior in downloaded file."
requestBody.SetDescription(&description) 
category := "Execution"
requestBody.SetCategory(&category) 
severity := graphmodels.HIGH_ALERTSEVERITY 
requestBody.SetSeverity(&severity) 
recommendedActions := "Isolate device, remove file, scan for additional IOCs"
requestBody.SetRecommendedActions(&recommendedActions) 
linkToIncident := int64(28282)
requestBody.SetLinkToIncident(&linkToIncident) 


entityDefinitionInput := graphmodelssecurity.NewEntityDefinitionInput()
entityType := graphmodels.FILE_MANUALALERTENTITYTYPE 
entityDefinitionInput.SetEntityType(&entityType) 
entityIdentifier := "sha256"
entityDefinitionInput.SetEntityIdentifier(&entityIdentifier) 
identifierValue := "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
entityDefinitionInput.SetIdentifierValue(&identifierValue) 
role := graphmodels.RELATED_ENTITYDEFINITIONINPUTROLE 
entityDefinitionInput.SetRole(&role) 
entityDefinitionInput1 := graphmodelssecurity.NewEntityDefinitionInput()
entityType := graphmodels.DEVICE_MANUALALERTENTITYTYPE 
entityDefinitionInput1.SetEntityType(&entityType) 
entityIdentifier := "deviceName"
entityDefinitionInput1.SetEntityIdentifier(&entityIdentifier) 
identifierValue := "DESKTOP-VICTIM01"
entityDefinitionInput1.SetIdentifierValue(&identifierValue) 
role := graphmodels.IMPACTED_ENTITYDEFINITIONINPUTROLE 
entityDefinitionInput1.SetRole(&role) 

entityDefinitions := []graphmodelssecurity.EntityDefinitionInputable {
	entityDefinitionInput,
	entityDefinitionInput1,
}
requestBody.SetEntityDefinitions(entityDefinitions)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
alerts_v2, err := graphClient.Security().Alerts_v2().Post(context.Background(), requestBody, nil)


```