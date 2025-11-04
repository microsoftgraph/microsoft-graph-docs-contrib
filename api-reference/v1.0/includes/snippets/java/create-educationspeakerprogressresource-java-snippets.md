---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationAssignmentResource educationAssignmentResource = new EducationAssignmentResource();
educationAssignmentResource.setDistributeForStudentWork(true);
EducationSpeakerProgressResource resource = new EducationSpeakerProgressResource();
resource.setOdataType("microsoft.graph.educationSpeakerProgressResource");
resource.setDisplayName("speakerProgressTestResource");
resource.setRecordingTimeLimitInMinutes(5);
resource.setShowRehearsalReportToStudentBeforeMediaUpload(true);
resource.setMaxRecordingAttempts(1);
resource.setIsVideoRequired(true);
resource.setIsAiFeedbackEnabled(true);
resource.setPresentationTitle("speakerProgressTestResource");
resource.setSpokenLanguageLocale("en-US");
EducationSpeakerCoachSettings speakerCoachSettings = new EducationSpeakerCoachSettings();
EducationSpeakerCoachDeliverySettings deliverySettings = new EducationSpeakerCoachDeliverySettings();
deliverySettings.setIsPronunciationEnabled(true);
speakerCoachSettings.setDeliverySettings(deliverySettings);
resource.setSpeakerCoachSettings(speakerCoachSettings);
EducationAiFeedbackCriteria aiFeedbackCriteria = new EducationAiFeedbackCriteria();
aiFeedbackCriteria.setSpeechType(EducationSpeechType.Informative);
EducationAiFeedbackSettings aiFeedbackSettings = new EducationAiFeedbackSettings();
EducationAiFeedbackDeliverySettings deliverySettings1 = new EducationAiFeedbackDeliverySettings();
deliverySettings1.setIsStyleEnabled(true);
aiFeedbackSettings.setDeliverySettings(deliverySettings1);
aiFeedbackCriteria.setAiFeedbackSettings(aiFeedbackSettings);
resource.setAiFeedbackCriteria(aiFeedbackCriteria);
educationAssignmentResource.setResource(resource);
EducationAssignmentResource result = graphClient.education().classes().byEducationClassId("{educationClass-id}").assignments().byEducationAssignmentId("{educationAssignment-id}").resources().post(educationAssignmentResource);


```