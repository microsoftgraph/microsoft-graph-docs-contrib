---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewCall()
"@odata.type" := "#microsoft.graph.call"
requestBody.Set"@odata.type"(&"@odata.type") 
callbackUri := "https://bot.contoso.com/callback"
requestBody.SetCallbackUri(&callbackUri) 
source := graphmodels.NewParticipantInfo()
"@odata.type" := "#microsoft.graph.participantInfo"
source.Set"@odata.type"(&"@odata.type") 
identity := graphmodels.NewIdentitySet()
"@odata.type" := "#microsoft.graph.identitySet"
identity.Set"@odata.type"(&"@odata.type") 
additionalData := map[string]interface{}{
applicationInstance := graphmodels.New()
"@odata.type" := "#microsoft.graph.identity"
applicationInstance.Set"@odata.type"(&"@odata.type") 
displayName := "Calling Bot"
applicationInstance.SetDisplayName(&displayName) 
id := "3d913abb-aec0-4964-8fa6-3c6850c4f278"
applicationInstance.SetId(&id) 
	identity.SetApplicationInstance(applicationInstance)
}
identity.SetAdditionalData(additionalData)
source.SetIdentity(identity)
countryCode := null
source.SetCountryCode(&countryCode) 
endpointType := null
source.SetEndpointType(&endpointType) 
region := null
source.SetRegion(&region) 
languageId := null
source.SetLanguageId(&languageId) 
requestBody.SetSource(source)


invitationParticipantInfo := graphmodels.NewInvitationParticipantInfo()
"@odata.type" := "#microsoft.graph.invitationParticipantInfo"
invitationParticipantInfo.Set"@odata.type"(&"@odata.type") 
identity := graphmodels.NewIdentitySet()
"@odata.type" := "#microsoft.graph.identitySet"
identity.Set"@odata.type"(&"@odata.type") 
additionalData := map[string]interface{}{
phone := graphmodels.New()
"@odata.type" := "#microsoft.graph.identity"
phone.Set"@odata.type"(&"@odata.type") 
id := "+12345678901"
phone.SetId(&id) 
	identity.SetPhone(phone)
}
identity.SetAdditionalData(additionalData)
invitationParticipantInfo.SetIdentity(identity)

targets := []graphmodels.InvitationParticipantInfoable {
	invitationParticipantInfo,

}
requestBody.SetTargets(targets)
requestedModalities := []graphmodels.Modalityable {
	"audio",

}
requestBody.SetRequestedModalities(requestedModalities)
mediaConfig := graphmodels.NewMediaConfig()
"@odata.type" := "#microsoft.graph.appHostedMediaConfig"
mediaConfig.Set"@odata.type"(&"@odata.type") 
additionalData := map[string]interface{}{
	"blob" : "<Media Session Configuration>", 
}
mediaConfig.SetAdditionalData(additionalData)
requestBody.SetMediaConfig(mediaConfig)
tenantId := "aa67bd4c-8475-432d-bd41-39f255720e0a"
requestBody.SetTenantId(&tenantId) 

result, err := graphClient.Communications().Calls().Post(requestBody)


```