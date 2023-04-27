---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MeetingRegistrant meetingRegistrantBase = new MeetingRegistrant();
meetingRegistrantBase.firstName = "Lisa";
meetingRegistrantBase.lastName = "Adkins";
meetingRegistrantBase.email = "lisa.adkins@contoso.com";
LinkedList<CustomQuestionAnswer> customQuestionAnswersList = new LinkedList<CustomQuestionAnswer>();
CustomQuestionAnswer customQuestionAnswers = new CustomQuestionAnswer();
customQuestionAnswers.questionId = "MSM5YjlmM2Q4ZS03ZmVkLTRmN3gwMDIw94MDAyMF9hX3gwMDIwX2RldmU=";
customQuestionAnswers.value = "No";
customQuestionAnswersList.add(customQuestionAnswers);
CustomQuestionAnswer customQuestionAnswers1 = new CustomQuestionAnswer();
customQuestionAnswers1.questionId = "MSM5M2E2OWQ1Ni1jZTc4LTQDAwMjBfZGlkX3gwMDIwX3lvdV94MDAyMF8=";
customQuestionAnswers1.value = "Internet";
customQuestionAnswersList.add(customQuestionAnswers1);
meetingRegistrantBase.customQuestionAnswers = customQuestionAnswersList;

graphClient.users("dc17674c-81d9-4adb-bfb2-8f6a442e4622").onlineMeetings("MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ").registration().registrants()
	.buildRequest()
	.post(meetingRegistrantBase);

```