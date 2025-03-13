---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const virtualAppointment = {
    '@odata.type': '#microsoft.graph.virtualAppointment',
    settings: {
        '@odata.type': 'microsoft.graph.virtualAppointmentSettings',
        allowClientToJoinUsingBrowser: 'true'
    },
    appointmentClients: [
        {
            '@odata.type': 'microsoft.graph.virtualAppointmentUser',
            emailAddress: 'gradya@contoso.com',
            displayName: 'Grady Archie',
            smsCapablePhoneNumber: '123-456-7890'
        }
    ],
    externalAppointmentId: 'AAMkADKnAAA=',
    externalAppointmentUrl: 'https://anyschedulingsystem.com/api/appointments/MkADKnAAA='
};

await client.api('/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi/virtualAppointment')
	.version('beta')
	.put(virtualAppointment);

```