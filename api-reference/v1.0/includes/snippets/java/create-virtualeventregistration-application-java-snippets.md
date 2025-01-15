---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

VirtualEventRegistration virtualEventRegistration = new VirtualEventRegistration();
virtualEventRegistration.setFirstName("Diane");
virtualEventRegistration.setLastName("Demoss");
virtualEventRegistration.setEmail("DianeDemoss@contoso.com");
virtualEventRegistration.setPreferredTimezone("Pacific Standard Time");
virtualEventRegistration.setPreferredLanguage("en-us");
LinkedList<VirtualEventRegistrationQuestionAnswer> registrationQuestionAnswers = new LinkedList<VirtualEventRegistrationQuestionAnswer>();
VirtualEventRegistrationQuestionAnswer virtualEventRegistrationQuestionAnswer = new VirtualEventRegistrationQuestionAnswer();
virtualEventRegistrationQuestionAnswer.setQuestionId("95320781-96b3-4b8f-8cf8-e6561d23447a");
virtualEventRegistrationQuestionAnswer.setValue(null);
virtualEventRegistrationQuestionAnswer.setBooleanValue(null);
LinkedList<String> multiChoiceValues = new LinkedList<String>();
multiChoiceValues.add("Seattle");
virtualEventRegistrationQuestionAnswer.setMultiChoiceValues(multiChoiceValues);
registrationQuestionAnswers.add(virtualEventRegistrationQuestionAnswer);
VirtualEventRegistrationQuestionAnswer virtualEventRegistrationQuestionAnswer1 = new VirtualEventRegistrationQuestionAnswer();
virtualEventRegistrationQuestionAnswer1.setQuestionId("4577afdb-8bee-4219-b482-04b52c6b855c");
virtualEventRegistrationQuestionAnswer1.setValue(null);
virtualEventRegistrationQuestionAnswer1.setBooleanValue(true);
LinkedList<String> multiChoiceValues1 = new LinkedList<String>();
virtualEventRegistrationQuestionAnswer1.setMultiChoiceValues(multiChoiceValues1);
registrationQuestionAnswers.add(virtualEventRegistrationQuestionAnswer1);
VirtualEventRegistrationQuestionAnswer virtualEventRegistrationQuestionAnswer2 = new VirtualEventRegistrationQuestionAnswer();
virtualEventRegistrationQuestionAnswer2.setQuestionId("80fefcf1-caf7-4cd3-b8d7-159e17c47f20");
virtualEventRegistrationQuestionAnswer2.setValue(null);
virtualEventRegistrationQuestionAnswer2.setBooleanValue(null);
LinkedList<String> multiChoiceValues2 = new LinkedList<String>();
multiChoiceValues2.add("London");
multiChoiceValues2.add("New York City");
virtualEventRegistrationQuestionAnswer2.setMultiChoiceValues(multiChoiceValues2);
registrationQuestionAnswers.add(virtualEventRegistrationQuestionAnswer2);
virtualEventRegistration.setRegistrationQuestionAnswers(registrationQuestionAnswers);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
 externalRegistrationInformation = new ();
externalRegistrationInformation.setReferrer("Facebook");
externalRegistrationInformation.setRegistrationId("myExternalRegistrationId");
additionalData.put("externalRegistrationInformation", externalRegistrationInformation);
virtualEventRegistration.setAdditionalData(additionalData);
VirtualEventRegistration result = graphClient.solutions().virtualEvents().webinars().byVirtualEventWebinarId("{virtualEventWebinar-id}").registrations().post(virtualEventRegistration);


```