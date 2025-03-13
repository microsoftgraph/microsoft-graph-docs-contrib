---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MeetingRegistrant meetingRegistrantBase = new MeetingRegistrant();
meetingRegistrantBase.setOdataType("#microsoft.graph.meetingRegistrant");
meetingRegistrantBase.setFirstName("Lisa");
meetingRegistrantBase.setLastName("Adkins");
meetingRegistrantBase.setEmail("lisa.adkins@contoso.com");
LinkedList<CustomQuestionAnswer> customQuestionAnswers = new LinkedList<CustomQuestionAnswer>();
CustomQuestionAnswer customQuestionAnswer = new CustomQuestionAnswer();
customQuestionAnswer.setQuestionId("MSM5YjlmM2Q4ZS03ZmVkLTRmN3gwMDIw94MDAyMF9hX3gwMDIwX2RldmU=");
customQuestionAnswer.setValue("No");
customQuestionAnswers.add(customQuestionAnswer);
CustomQuestionAnswer customQuestionAnswer1 = new CustomQuestionAnswer();
customQuestionAnswer1.setQuestionId("MSM5M2E2OWQ1Ni1jZTc4LTQDAwMjBfZGlkX3gwMDIwX3lvdV94MDAyMF8=");
customQuestionAnswer1.setValue("Internet");
customQuestionAnswers.add(customQuestionAnswer1);
meetingRegistrantBase.setCustomQuestionAnswers(customQuestionAnswers);
MeetingRegistrantBase result = graphClient.users().byUserId("{user-id}").onlineMeetings().byOnlineMeetingId("{onlineMeeting-id}").registration().registrants().post(meetingRegistrantBase);


```