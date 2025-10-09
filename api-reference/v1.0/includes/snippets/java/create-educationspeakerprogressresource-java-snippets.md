---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationAssignmentResource educationAssignmentResource = new EducationAssignmentResource();
educationAssignmentResource.setDistributeForStudentWork(true);
EducationResource resource = new EducationResource();
resource.setOdataType("microsoft.graph.educationSpeakerProgressResource");
resource.setDisplayName("speakerProgressTestResource");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("recordingTimeLimitInMinutes", 5);
additionalData.put("showRehearsalReportToStudentBeforeMediaUpload", true);
additionalData.put("maxRecordingAttempts", 1);
additionalData.put("isVideoRequired", true);
additionalData.put("isAiFeedbackEnabled", true);
additionalData.put("presentationTitle", "speakerProgressTestResource");
additionalData.put("spokenLanguageLocale", "en-US");
 speakerCoachSettings = new ();
 deliverySettings = new ();
deliverySettings.setIsPronunciationEnabled(true);
speakerCoachSettings.setDeliverySettings(deliverySettings);
additionalData.put("speakerCoachSettings", speakerCoachSettings);
 aiFeedbackCriteria = new ();
aiFeedbackCriteria.setSpeechType("informative");
 aiFeedbackSettings = new ();
 deliverySettings1 = new ();
deliverySettings1.setIsStyleEnabled(true);
aiFeedbackSettings.setDeliverySettings(deliverySettings1);
aiFeedbackCriteria.setAiFeedbackSettings(aiFeedbackSettings);
additionalData.put("aiFeedbackCriteria", aiFeedbackCriteria);
resource.setAdditionalData(additionalData);
educationAssignmentResource.setResource(resource);
EducationAssignmentResource result = graphClient.education().classes().byEducationClassId("{educationClass-id}").assignments().byEducationAssignmentId("{educationAssignment-id}").resources().post(educationAssignmentResource);


```