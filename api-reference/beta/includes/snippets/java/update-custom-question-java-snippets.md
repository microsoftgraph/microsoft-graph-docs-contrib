---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MeetingRegistrationQuestion meetingRegistrationQuestion = new MeetingRegistrationQuestion();
meetingRegistrationQuestion.answerInputType = AnswerInputType.RADIO_BUTTON;
LinkedList<String> answerOptionsList = new LinkedList<String>();
answerOptionsList.add("Software Engineer");
answerOptionsList.add("Software Development Manager");
answerOptionsList.add("Product Manager");
answerOptionsList.add("Data scientist");
answerOptionsList.add("Other");
meetingRegistrationQuestion.answerOptions = answerOptionsList;

graphClient.me().onlineMeetings("MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ").registration().customQuestions("MSNhYjc5NWI4MC119zX3gwMDIwX3lvdXJfeDAwMjBfam8=")
	.buildRequest()
	.patch(meetingRegistrationQuestion);

```