---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const sendVirtualAppointmentSms = {
phoneNumbers: [ '+13129224122', '+1242421412'],
virtualAppointmentSmsType: 'confirmation'
};

await client.api('/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi/sendVirtualAppointmentSms')
	.version('beta')
	.post(sendVirtualAppointmentSms);

```