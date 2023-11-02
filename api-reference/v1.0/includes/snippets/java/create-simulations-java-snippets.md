---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Simulation simulation = new Simulation();
simulation.displayName = "Graph Simulation";
simulation.additionalDataManager().put("payload@odata.bind", new JsonPrimitive("https://graph.microsoft.com/v1.0/security/attacksimulation/payloads/12345678-9abc-def0-123456789a"));
simulation.additionalDataManager().put("loginPage@odata.bind", new JsonPrimitive("https://graph.microsoft.com/v1.0/security/attacksimulation/loginPages/1w345678-9abc-def0-123456789a"));
simulation.additionalDataManager().put("landingPage@odata.bind", new JsonPrimitive("https://graph.microsoft.com/v1.0/security/attacksimulation/landingPages/1c345678-9abc-def0-123456789a"));
EmailIdentity createdBy = new EmailIdentity();
createdBy.email = "john@contoso.com";
simulation.createdBy = createdBy;
simulation.durationInDays = "3";
simulation.attackTechnique = SimulationAttackTechnique.CREDENTIAL_HARVESTING;
simulation.status = SimulationStatus.SCHEDULED;
AddressBookAccountTargetContent includedAccountTarget = new AddressBookAccountTargetContent();
includedAccountTarget.type = AccountTargetContentType.ADDRESS_BOOK;
LinkedList<String> accountTargetEmailsList = new LinkedList<String>();
accountTargetEmailsList.add("john@contoso.com");
includedAccountTarget.accountTargetEmails = accountTargetEmailsList;
simulation.includedAccountTarget = includedAccountTarget;
TrainingSetting trainingSetting = new TrainingSetting();
trainingSetting.settingType = TrainingSettingType.NO_TRAINING;
simulation.trainingSetting = trainingSetting;
EndUserNotificationSetting endUserNotificationSetting = new EndUserNotificationSetting();
endUserNotificationSetting.notificationPreference = EndUserNotificationPreference.MICROSOFT;
endUserNotificationSetting.settingType = EndUserNotificationSettingType.NO_TRAINING;
PositiveReinforcementNotification positiveReinforcement = new PositiveReinforcementNotification();
positiveReinforcement.deliveryPreference = NotificationDeliveryPreference.DELIVER_AFTER_CAMPAIGN_END;
positiveReinforcement.endUserNotification = "https://graph.microsoft.com/v1.0/security/attacksimulation/endUserNotifications/1ewer3678-9abc-def0-123456789a";
positiveReinforcement.defaultLanguage = "en";
endUserNotificationSetting.positiveReinforcement = positiveReinforcement;
SimulationNotification simulationNotification = new SimulationNotification();
simulationNotification.targettedUserType = TargettedUserType.COMPROMISED;
simulationNotification.additionalDataManager().put("endUserNotification@odata.bind", new JsonPrimitive("https://graph.microsoft.com/v1.0/security/attacksimulation/endUserNotifications/12wer3678-9abc-def0-123456789a"));
simulationNotification.defaultLanguage = "en";
endUserNotificationSetting.simulationNotification = simulationNotification;
simulation.endUserNotificationSetting = endUserNotificationSetting;

graphClient.security().attackSimulation().simulations()
	.buildRequest()
	.post(simulation);

```