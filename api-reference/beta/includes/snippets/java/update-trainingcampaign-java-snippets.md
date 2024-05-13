---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TrainingCampaign trainingCampaign = new TrainingCampaign();
trainingCampaign.setDisplayName("Graph Training Campaign");
trainingCampaign.setDescription("Graph Training Campaign Description");
EmailIdentity createdBy = new EmailIdentity();
createdBy.setEmail("john@contoso.com");
trainingCampaign.setCreatedBy(createdBy);
EmailIdentity lastModifiedBy = new EmailIdentity();
lastModifiedBy.setEmail("john@contoso.com");
trainingCampaign.setLastModifiedBy(lastModifiedBy);
AccountTargetContent includedAccountTarget = new AccountTargetContent();
includedAccountTarget.setType(AccountTargetContentType.AddressBook);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
LinkedList<String> accountTargetEmails = new LinkedList<String>();
accountTargetEmails.add("john@contoso.com");
additionalData.put("accountTargetEmails", accountTargetEmails);
includedAccountTarget.setAdditionalData(additionalData);
trainingCampaign.setIncludedAccountTarget(includedAccountTarget);
EndUserNotificationSetting endUserNotificationSetting = new EndUserNotificationSetting();
endUserNotificationSetting.setNotificationPreference(EndUserNotificationPreference.Microsoft);
endUserNotificationSetting.setSettingType(EndUserNotificationSettingType.TrainingSelected);
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
 trainingReminder = new ();
trainingReminder.setDeliveryFrequency("weekly");
trainingReminder.setEndUserNotificationOdataBind("https://graph.microsoft.com/beta/security/attackSimulation/endUserNotifications('fe521249-9901-4584-a987-026a9980c58e')");
trainingReminder.setDefaultLanguage("en");
additionalData1.put("trainingReminder", trainingReminder);
 trainingAssignment = new ();
trainingAssignment.setEndUserNotificationOdataBind("https://graph.microsoft.com/beta/security/attackSimulation/endUserNotifications('36fb4dc1-7c37-4b96-9096-12e6d6014fae')");
trainingAssignment.setDefaultLanguage("en");
additionalData1.put("trainingAssignment", trainingAssignment);
endUserNotificationSetting.setAdditionalData(additionalData1);
trainingCampaign.setEndUserNotificationSetting(endUserNotificationSetting);
TrainingSetting trainingSetting = new TrainingSetting();
trainingSetting.setSettingType(TrainingSettingType.MicrosoftCustom);
HashMap<String, Object> additionalData2 = new HashMap<String, Object>();
LinkedList<Object> trainingAssignmentMappings = new LinkedList<Object>();
 property1 = new ();
LinkedList<String> assignedTo = new LinkedList<String>();
assignedTo.add("allUsers");
property1.setAssignedTo(assignedTo);
property1.setTrainingOdataBind("https://graph.microsoft.com/beta/security/attackSimulation/trainings('40454905-dc26-4f36-b854-3042a5362cb3')");
trainingAssignmentMappings.add(property1);
 property3 = new ();
LinkedList<String> assignedTo1 = new LinkedList<String>();
assignedTo1.add("allUsers");
property3.setAssignedTo(assignedTo1);
property3.setTrainingOdataBind("https://graph.microsoft.com/beta/security/attackSimulation/trainings('ea70ae06-3859-4818-be9d-270ee81d80a4')");
trainingAssignmentMappings.add(property3);
 property5 = new ();
LinkedList<String> assignedTo2 = new LinkedList<String>();
assignedTo2.add("allUsers");
property5.setAssignedTo(assignedTo2);
property5.setTrainingOdataBind("https://graph.microsoft.com/beta/security/attackSimulation/trainings('d733d88c-1b5a-48e3-a588-9910e41ac21d')");
trainingAssignmentMappings.add(property5);
additionalData2.put("trainingAssignmentMappings", trainingAssignmentMappings);
trainingSetting.setAdditionalData(additionalData2);
trainingCampaign.setTrainingSetting(trainingSetting);
CampaignSchedule campaignSchedule = new CampaignSchedule();
OffsetDateTime launchDateTime = OffsetDateTime.parse("2024-02-15T07:59:44Z");
campaignSchedule.setLaunchDateTime(launchDateTime);
OffsetDateTime completionDateTime = OffsetDateTime.parse("2024-02-18T07:59:44Z");
campaignSchedule.setCompletionDateTime(completionDateTime);
campaignSchedule.setStatus(CampaignStatus.Cancelled);
trainingCampaign.setCampaignSchedule(campaignSchedule);
TrainingCampaign result = graphClient.security().attackSimulation().trainingCampaigns().byTrainingCampaignId("{trainingCampaign-id}").patch(trainingCampaign);


```