---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MeetingRegistrationQuestion meetingRegistrationQuestion = new MeetingRegistrationQuestion();
meetingRegistrationQuestion.setAnswerInputType(AnswerInputType.RadioButton);
LinkedList<String> answerOptions = new LinkedList<String>();
answerOptions.add("Software Engineer");
answerOptions.add("Software Development Manager");
answerOptions.add("Product Manager");
answerOptions.add("Data scientist");
answerOptions.add("Other");
meetingRegistrationQuestion.setAnswerOptions(answerOptions);
MeetingRegistrationQuestion result = graphClient.me().onlineMeetings().byOnlineMeetingId("{onlineMeeting-id}").registration().customQuestions().byMeetingRegistrationQuestionId("{meetingRegistrationQuestion-id}").patch(meetingRegistrationQuestion);


```