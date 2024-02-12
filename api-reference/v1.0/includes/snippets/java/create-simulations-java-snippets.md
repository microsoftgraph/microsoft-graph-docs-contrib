---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Simulation simulation = new Simulation();
simulation.setDisplayName("Graph Simulation");
EmailIdentity createdBy = new EmailIdentity();
createdBy.setEmail("john@contoso.com");
simulation.setCreatedBy(createdBy);
simulation.setDurationInDays(3);
simulation.setAttackTechnique(SimulationAttackTechnique.CredentialHarvesting);
simulation.setStatus(SimulationStatus.Scheduled);
AddressBookAccountTargetContent includedAccountTarget = new AddressBookAccountTargetContent();
includedAccountTarget.setOdataType("#microsoft.graph.addressBookAccountTargetContent");
includedAccountTarget.setType(AccountTargetContentType.AddressBook);
LinkedList<String> accountTargetEmails = new LinkedList<String>();
accountTargetEmails.add("john@contoso.com");
includedAccountTarget.setAccountTargetEmails(accountTargetEmails);
simulation.setIncludedAccountTarget(includedAccountTarget);
TrainingSetting trainingSetting = new TrainingSetting();
trainingSetting.setSettingType(TrainingSettingType.NoTraining);
simulation.setTrainingSetting(trainingSetting);
EndUserNotificationSetting endUserNotificationSetting = new EndUserNotificationSetting();
endUserNotificationSetting.setNotificationPreference(EndUserNotificationPreference.Microsoft);
endUserNotificationSetting.setSettingType(EndUserNotificationSettingType.NoTraining);
PositiveReinforcementNotification positiveReinforcement = new PositiveReinforcementNotification();
positiveReinforcement.setDeliveryPreference(NotificationDeliveryPreference.DeliverAfterCampaignEnd);
positiveReinforcement.setEndUserNotification("https://graph.microsoft.com/v1.0/security/attacksimulation/endUserNotifications/1ewer3678-9abc-def0-123456789a");
positiveReinforcement.setDefaultLanguage("en");
endUserNotificationSetting.setPositiveReinforcement(positiveReinforcement);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
 simulationNotification = new ();
simulationNotification.setTargettedUserType("compromised");
simulationNotification.setEndUserNotificationOdataBind("https://graph.microsoft.com/v1.0/security/attacksimulation/endUserNotifications/12wer3678-9abc-def0-123456789a");
simulationNotification.setDefaultLanguage("en");
additionalData.put("simulationNotification", simulationNotification);
endUserNotificationSetting.setAdditionalData(additionalData);
simulation.setEndUserNotificationSetting(endUserNotificationSetting);
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("payload@odata.bind", "https://graph.microsoft.com/v1.0/security/attacksimulation/payloads/12345678-9abc-def0-123456789a");
additionalData1.put("loginPage@odata.bind", "https://graph.microsoft.com/v1.0/security/attacksimulation/loginPages/1w345678-9abc-def0-123456789a");
additionalData1.put("landingPage@odata.bind", "https://graph.microsoft.com/v1.0/security/attacksimulation/landingPages/1c345678-9abc-def0-123456789a");
simulation.setAdditionalData(additionalData1);
Simulation result = graphClient.security().attackSimulation().simulations().post(simulation);


```