---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationAssignmentResource = {
  distributeForStudentWork: true,
  resource: {
    '@odata.type': 'microsoft.graph.educationSpeakerProgressResource',
    displayName: 'speakerProgressTestResource',
    recordingTimeLimitInMinutes: 5,
    showRehearsalReportToStudentBeforeMediaUpload: true,
    maxRecordingAttempts: 1,
    isVideoRequired: true,
    isAiFeedbackEnabled: true,
    presentationTitle: 'speakerProgressTestResource',
    spokenLanguageLocale: 'en-US',
    speakerCoachSettings: {
      deliverySettings: {
        isPronunciationEnabled: true
      }
    },
    aiFeedbackCriteria: {
      speechType: 'informative',
      aiFeedbackSettings: {
        deliverySettings: {
          isStyleEnabled: true
        }
      }
    }
  }
};

await client.api('/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/fe9c8d6f-baad-4b5e-b9d5-e2bb33e4ed19/resources')
	.post(educationAssignmentResource);

```