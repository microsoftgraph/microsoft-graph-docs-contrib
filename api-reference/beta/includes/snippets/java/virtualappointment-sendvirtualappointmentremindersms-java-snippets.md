---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<String> phoneNumbersList = new LinkedList<String>();
phoneNumbersList.add("+13129224122");
phoneNumbersList.add("+1242421412");

RemindBeforeTimeInMinutesType remindBeforeTimeInMinutesType = RemindBeforeTimeInMinutesType.MINS15;

graphClient.me().onlineMeetings("MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi")
	.sendVirtualAppointmentReminderSms(OnlineMeetingSendVirtualAppointmentReminderSmsParameterSet
		.newBuilder()
		.withPhoneNumbers(phoneNumbersList)
		.withRemindBeforeTimeInMinutesType(remindBeforeTimeInMinutesType)
		.build())
	.buildRequest()
	.post();

```