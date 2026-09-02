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
title := "Unauthorized access attempt"
createAlertInput.SetTitle(&title) 
severity := graphmodels.HIGH_ALERTSEVERITY 
createAlertInput.SetSeverity(&severity) 
description := "Multiple failed login attempts from an unusual location."
createAlertInput.SetDescription(&description) 
category := "InitialAccess"
createAlertInput.SetCategory(&category) 
mitreTechniques := []string {
	"T1078",
}
createAlertInput.SetMitreTechniques(mitreTechniques)
isExcludedFromCorrelation := false
createAlertInput.SetIsExcludedFromCorrelation(&isExcludedFromCorrelation) 


entityDefinition := graphmodelssecurity.NewEntityDefinition()
entityType := graphmodels.USER_MANUALALERTENTITYTYPE 
entityDefinition.SetEntityType(&entityType) 
entityIdentifier := "userPrincipalName"
entityDefinition.SetEntityIdentifier(&entityIdentifier) 
identifierValue := "admin@contoso.com"
entityDefinition.SetIdentifierValue(&identifierValue) 
role := graphmodels.IMPACTED_ENTITYDEFINITIONINPUTROLE 
entityDefinition.SetRole(&role) 
entityDefinition1 := graphmodelssecurity.NewEntityDefinition()
entityType := graphmodels.IP_MANUALALERTENTITYTYPE 
entityDefinition1.SetEntityType(&entityType) 
entityIdentifier := "address"
entityDefinition1.SetEntityIdentifier(&entityIdentifier) 
identifierValue := "198.51.100.42"
entityDefinition1.SetIdentifierValue(&identifierValue) 
role := graphmodels.RELATED_ENTITYDEFINITIONINPUTROLE 
entityDefinition1.SetRole(&role) 

entityDefinitions := []graphmodelssecurity.EntityDefinitionable {
	entityDefinition,
	entityDefinition1,
}
createAlertInput.SetEntityDefinitions(entityDefinitions)
requestBody.SetCreateAlertInput(createAlertInput)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
microsoftGraphSecurityCreateAlert, err := graphClient.Security().Alerts_v2().MicrosoftGraphSecurityCreateAlert().Post(context.Background(), requestBody, nil)


```