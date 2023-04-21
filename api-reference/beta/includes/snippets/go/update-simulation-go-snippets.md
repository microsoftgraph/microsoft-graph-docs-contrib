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


requestBody := graphmodels.NewSimulation()
displayName := "Graph Simulation"
requestBody.SetDisplayName(&displayName) 
durationInDays := int32(7)
requestBody.SetDurationInDays(&durationInDays) 
attackTechnique := graphmodels.CREDENTIALHARVESTING_SIMULATIONATTACKTECHNIQUE 
requestBody.SetAttackTechnique(&attackTechnique) 
attackType := graphmodels.SOCIAL_SIMULATIONATTACKTYPE 
requestBody.SetAttackType(&attackType) 
status := graphmodels.SCHEDULED_SIMULATIONSTATUS 
requestBody.SetStatus(&status) 
includedAccountTarget := graphmodels.NewAccountTargetContent()
type := graphmodels.ADDRESSBOOK_ACCOUNTTARGETCONTENTTYPE 
includedAccountTarget.SetType(&type) 
additionalData := map[string]interface{}{
	accountTargetEmails := []string {
		"faiza@contoso.com",

	}
}
includedAccountTarget.SetAdditionalData(additionalData)
requestBody.SetIncludedAccountTarget(includedAccountTarget)
excludedAccountTarget := graphmodels.NewAccountTargetContent()
type := graphmodels.ADDRESSBOOK_ACCOUNTTARGETCONTENTTYPE 
excludedAccountTarget.SetType(&type) 
additionalData := map[string]interface{}{
	accountTargetEmails := []string {
		"sam@contoso.com",

	}
}
excludedAccountTarget.SetAdditionalData(additionalData)
requestBody.SetExcludedAccountTarget(excludedAccountTarget)
additionalData := map[string]interface{}{
	"odataEtag" : "\"0100aa9b-0000-0100-0000-6396fa270000\"", 
	"odataBind" : "https://graph.microsoft.com/beta/security/attacksimulation/payloads/12345678-9abc-def0-123456789a", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Security().AttackSimulation().Simulations().BySimulationId("simulation-id").Patch(context.Background(), requestBody, nil)


```