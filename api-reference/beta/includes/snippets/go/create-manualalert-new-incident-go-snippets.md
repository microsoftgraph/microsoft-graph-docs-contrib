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
title := "Suspicious login from TOR exit node"
requestBody.SetTitle(&title) 
description := "User account showed login activity from known TOR exit node. Manual investigation revealed potential account compromise."
requestBody.SetDescription(&description) 
category := "InitialAccess"
requestBody.SetCategory(&category) 
severity := graphmodels.HIGH_ALERTSEVERITY 
requestBody.SetSeverity(&severity) 
recommendedActions := "Reset user credentials, enable MFA, review recent user activity"
requestBody.SetRecommendedActions(&recommendedActions) 
mitreTechniques := []string {
	"T1078",
}
requestBody.SetMitreTechniques(mitreTechniques)


entityDefinitionInput := graphmodelssecurity.NewEntityDefinitionInput()
entityType := graphmodels.USER_MANUALALERTENTITYTYPE 
entityDefinitionInput.SetEntityType(&entityType) 
entityIdentifier := "userPrincipalName"
entityDefinitionInput.SetEntityIdentifier(&entityIdentifier) 
identifierValue := "john.doe@contoso.com"
entityDefinitionInput.SetIdentifierValue(&identifierValue) 
role := graphmodels.IMPACTED_ENTITYDEFINITIONINPUTROLE 
entityDefinitionInput.SetRole(&role) 
entityDefinitionInput1 := graphmodelssecurity.NewEntityDefinitionInput()
entityType := graphmodels.IP_MANUALALERTENTITYTYPE 
entityDefinitionInput1.SetEntityType(&entityType) 
entityIdentifier := "address"
entityDefinitionInput1.SetEntityIdentifier(&entityIdentifier) 
identifierValue := "185.220.101.50"
entityDefinitionInput1.SetIdentifierValue(&identifierValue) 
role := graphmodels.RELATED_ENTITYDEFINITIONINPUTROLE 
entityDefinitionInput1.SetRole(&role) 

entityDefinitions := []graphmodelssecurity.EntityDefinitionInputable {
	entityDefinitionInput,
	entityDefinitionInput1,
}
requestBody.SetEntityDefinitions(entityDefinitions)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
alerts_v2, err := graphClient.Security().Alerts_v2().Post(context.Background(), requestBody, nil)


```