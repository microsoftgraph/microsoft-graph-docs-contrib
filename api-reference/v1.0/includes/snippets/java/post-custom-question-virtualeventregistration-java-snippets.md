---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

VirtualEventRegistrationCustomQuestion virtualEventRegistrationQuestionBase = new VirtualEventRegistrationCustomQuestion();
virtualEventRegistrationQuestionBase.setOdataType("#microsoft.graph.virtualEventRegistrationCustomQuestion");
virtualEventRegistrationQuestionBase.setDisplayName("What's your job position?");
virtualEventRegistrationQuestionBase.setAnswerInputType(VirtualEventRegistrationQuestionAnswerInputType.MultiChoice);
LinkedList<String> answerChoices = new LinkedList<String>();
answerChoices.add("Software Engineer");
answerChoices.add("Engineer Manager");
answerChoices.add("Product Manager");
virtualEventRegistrationQuestionBase.setAnswerChoices(answerChoices);
VirtualEventRegistrationQuestionBase result = graphClient.solutions().virtualEvents().webinars().byVirtualEventWebinarId("{virtualEventWebinar-id}").registrationConfiguration().questions().post(virtualEventRegistrationQuestionBase);


```