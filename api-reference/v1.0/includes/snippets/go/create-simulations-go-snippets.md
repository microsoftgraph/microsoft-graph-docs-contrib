---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewSimulation()
displayName := "Graph Simulation"
requestBody.SetDisplayName(&displayName) 
createdBy := graphmodels.NewEmailIdentity()
email := "john@contoso.com"
createdBy.SetEmail(&email) 
requestBody.SetCreatedBy(createdBy)
durationInDays := int32(3)
requestBody.SetDurationInDays(&durationInDays) 
attackTechnique := graphmodels.CREDENTIALHARVESTING_SIMULATIONATTACKTECHNIQUE 
requestBody.SetAttackTechnique(&attackTechnique) 
status := graphmodels.SCHEDULED_SIMULATIONSTATUS 
requestBody.SetStatus(&status) 
includedAccountTarget := graphmodels.NewAddressBookAccountTargetContent()
type := graphmodels.ADDRESSBOOK_ACCOUNTTARGETCONTENTTYPE 
includedAccountTarget.SetType(&type) 
accountTargetEmails := []string {
	"john@contoso.com",
}
includedAccountTarget.SetAccountTargetEmails(accountTargetEmails)
requestBody.SetIncludedAccountTarget(includedAccountTarget)
trainingSetting := graphmodels.NewTrainingSetting()
settingType := graphmodels.NOTRAINING_TRAININGSETTINGTYPE 
trainingSetting.SetSettingType(&settingType) 
requestBody.SetTrainingSetting(trainingSetting)
endUserNotificationSetting := graphmodels.NewEndUserNotificationSetting()
notificationPreference := graphmodels.MICROSOFT_ENDUSERNOTIFICATIONPREFERENCE 
endUserNotificationSetting.SetNotificationPreference(&notificationPreference) 
settingType := graphmodels.NOTRAINING_ENDUSERNOTIFICATIONSETTINGTYPE 
endUserNotificationSetting.SetSettingType(&settingType) 
positiveReinforcement := graphmodels.NewPositiveReinforcementNotification()
deliveryPreference := graphmodels.DELIVERAFTERCAMPAIGNEND_NOTIFICATIONDELIVERYPREFERENCE 
positiveReinforcement.SetDeliveryPreference(&deliveryPreference) 
endUserNotification := "https://graph.microsoft.com/v1.0/security/attacksimulation/endUserNotifications/1ewer3678-9abc-def0-123456789a"
positiveReinforcement.SetEndUserNotification(&endUserNotification) 
defaultLanguage := "en"
positiveReinforcement.SetDefaultLanguage(&defaultLanguage) 
endUserNotificationSetting.SetPositiveReinforcement(positiveReinforcement)
additionalData := map[string]interface{}{
simulationNotification := graphmodels.New()
targettedUserType := "compromised"
simulationNotification.SetTargettedUserType(&targettedUserType) 
odataBind := "https://graph.microsoft.com/v1.0/security/attacksimulation/endUserNotifications/12wer3678-9abc-def0-123456789a"
simulationNotification.SetOdataBind(&odataBind) 
defaultLanguage := "en"
simulationNotification.SetDefaultLanguage(&defaultLanguage) 
	endUserNotificationSetting.SetSimulationNotification(simulationNotification)
}
endUserNotificationSetting.SetAdditionalData(additionalData)
requestBody.SetEndUserNotificationSetting(endUserNotificationSetting)
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/v1.0/security/attacksimulation/payloads/12345678-9abc-def0-123456789a", 
	"odataBind" : "https://graph.microsoft.com/v1.0/security/attacksimulation/loginPages/1w345678-9abc-def0-123456789a", 
	"odataBind" : "https://graph.microsoft.com/v1.0/security/attacksimulation/landingPages/1c345678-9abc-def0-123456789a", 
}
requestBody.SetAdditionalData(additionalData)

simulations, err := graphClient.Security().AttackSimulation().Simulations().Post(context.Background(), requestBody, nil)


```