---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const sendVirtualAppointmentReminderSms = {
phoneNumbers: [ '+13129224122', '+1242421412'],
remindBeforeTimeInMinutesType: 'mins15'
};

await client.api('/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi/sendVirtualAppointmentReminderSms')
	.version('beta')
	.post(sendVirtualAppointmentReminderSms);

```