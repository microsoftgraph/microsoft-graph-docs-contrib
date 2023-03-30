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
status := graphmodels.SCHEDULED_SIMULATIONSTATUS 
requestBody.SetStatus(&status) 
durationInDays := int32(3)
requestBody.SetDurationInDays(&durationInDays) 
includedAccountTarget := graphmodels.NewAccountTargetContent()
type := graphmodels.ADDRESSBOOK_ACCOUNTTARGETCONTENTTYPE 
includedAccountTarget.SetType(&type) 
additionalData := map[string]interface{}{
	accountTargetEmails := []string {
		"john@contoso.com",

	}
}
includedAccountTarget.SetAdditionalData(additionalData)
requestBody.SetIncludedAccountTarget(includedAccountTarget)
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/beta/security/attacksimulation/payloads/12345678-9abc-def0-123456789a", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Security().AttackSimulation().Simulations().Post(context.Background(), requestBody, nil)


```