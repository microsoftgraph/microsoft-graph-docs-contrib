---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewSimulation()
id := "2f5548d1-0dd8-4cc8-9de0-e0d6ec7ea3dc"
requestBody.SetId(&id) 
displayName := "Graph Simulation"
requestBody.SetDisplayName(&displayName) 
description := "Test simulation created using postman"
requestBody.SetDescription(&description) 
payloadDeliveryPlatform := graphmodels.EMAIL_PAYLOADDELIVERYPLATFORM 
requestBody.SetPayloadDeliveryPlatform(&payloadDeliveryPlatform) 
durationInDays := int32(7)
requestBody.SetDurationInDays(&durationInDays) 
attackTechnique := graphmodels.CREDENTIALHARVESTING_SIMULATIONATTACKTECHNIQUE 
requestBody.SetAttackTechnique(&attackTechnique) 
attackType := graphmodels.SOCIAL_SIMULATIONATTACKTYPE 
requestBody.SetAttackType(&attackType) 
status := graphmodels.SCHEDULED_SIMULATIONSTATUS 
requestBody.SetStatus(&status) 
completionDateTime , err := time.Parse(time.RFC3339, "2022-09-16T06:13:08.4297612Z")
requestBody.SetCompletionDateTime(&completionDateTime) 
launchDateTime , err := time.Parse(time.RFC3339, "2022-09-05T06:13:08.4297612Z")
requestBody.SetLaunchDateTime(&launchDateTime) 
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
	"payload@odata.bind" : "https://graph.microsoft.com/beta/security/attacksimulation/payloads/12345678-9abc-def0-123456789a", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Security().AttackSimulation().SimulationsById("simulation-id").Patch(context.Background(), requestBody, nil)


```