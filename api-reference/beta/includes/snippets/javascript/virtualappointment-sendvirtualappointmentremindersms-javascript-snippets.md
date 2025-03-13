---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const sendVirtualAppointmentReminderSms = {
    attendees: [ 
        {
            phoneNumber: '+13129224122',
            timeZone: 'Pacific Standard Time'
        },
        {
            phoneNumber: '+1242421412',
            timeZone: 'Eastern Standard Time'
        }
    ], 
    remindBeforeTimeInMinutesType: 'mins15'
};

await client.api('/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi/sendVirtualAppointmentReminderSms')
	.version('beta')
	.post(sendVirtualAppointmentReminderSms);

```