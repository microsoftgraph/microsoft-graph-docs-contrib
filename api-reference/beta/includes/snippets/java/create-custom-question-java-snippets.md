---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MeetingRegistrationQuestion meetingRegistrationQuestion = new MeetingRegistrationQuestion();
meetingRegistrationQuestion.displayName = "What's your job position?";
meetingRegistrationQuestion.isRequired = false;
meetingRegistrationQuestion.answerInputType = AnswerInputType.TEXT;

graphClient.me().onlineMeetings("MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ").registration().microsoft.graph.meetingRegistration().customQuestions()
	.buildRequest()
	.post(meetingRegistrationQuestion);

```