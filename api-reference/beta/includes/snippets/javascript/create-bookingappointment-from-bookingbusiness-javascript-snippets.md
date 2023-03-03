---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const bookingAppointment = {
    '@odata.type':'#microsoft.graph.bookingAppointment',
    customerEmailAddress: 'jordanm@contoso.com',
    customerLocation: {
        '@odata.type':'#microsoft.graph.location',
        address: {
            '@odata.type':'#microsoft.graph.physicalAddress',
            city: 'Buffalo',
            countryOrRegion: 'USA',
            postalCode: '98052',
            postOfficeBox: null,
            state: 'NY',
            street: '123 First Avenue',
            'type@odata.type':'#microsoft.graph.physicalAddressType',
            type: null
        },
        coordinates: null,
        displayName: 'Customer',
        locationEmailAddress: null,
        'locationType@odata.type':'#microsoft.graph.locationType',
        locationType: null,
        locationUri: null,
        uniqueId: null,
        'uniqueIdType@odata.type':'#microsoft.graph.locationUniqueIdType',
        uniqueIdType: null
    },
    customerName: 'Jordan Miller',
    customerNotes: 'Please be on time.',
    customerPhone: '213-555-0199',
    customerTimeZone: 'America/Chicago',
    smsNotificationsEnabled: true,
    end: {
        '@odata.type':'#microsoft.graph.dateTimeTimeZone',
        dateTime: '2018-05-01T12:30:00.0000000+00:00',
        timeZone: 'UTC'
    },
    invoiceAmount: 10.0,
    invoiceDate: {
        '@odata.type':'#microsoft.graph.dateTimeTimeZone',
        dateTime: '2018-05-01T12:30:00.0000000+00:00',
        timeZone: 'UTC'
    },
    invoiceId: '1001',
    'invoiceStatus@odata.type':'#microsoft.graph.bookingInvoiceStatus',
    invoiceStatus: 'open',
    invoiceUrl: 'theInvoiceUrl',
    isLocationOnline: true,
    optOutOfCustomerEmail: false,
    anonymousJoinWebUrl: null,
    postBuffer: 'PT10M',
    preBuffer: 'PT5M',
    price: 10.0,
    'priceType@odata.type': '#microsoft.graph.bookingPriceType',
    priceType: 'fixedPrice',
    'reminders@odata.type': '#Collection(microsoft.graph.bookingReminder)',
    reminders: [
        {
            '@odata.type': '#microsoft.graph.bookingReminder',
            message: 'This service is tomorrow',
            offset: 'P1D',
            'recipients@odata.type': '#microsoft.graph.bookingReminderRecipients',
            recipients: 'allAttendees'
        },
        {
            '@odata.type': '#microsoft.graph.bookingReminder',
            message: 'Please be available to enjoy your lunch service.',
            offset: 'PT1H',
            'recipients@odata.type': '#microsoft.graph.bookingReminderRecipients',
            recipients: 'customer'
        },
        {
            '@odata.type': '#microsoft.graph.bookingReminder',
            message: 'Please check traffic for next cater.',
            offset: 'PT2H',
            'recipients@odata.type': '#microsoft.graph.bookingReminderRecipients',
            recipients: 'staff'
        }
    ],
    serviceId: '57da6774-a087-4d69-b0e6-6fb82c339976',
    serviceLocation: {
        '@odata.type': '#microsoft.graph.location',
        address: {
            '@odata.type': '#microsoft.graph.physicalAddress',
            city: 'Buffalo',
            countryOrRegion: 'USA',
            postalCode: '98052',
            postOfficeBox: null,
            state: 'NY',
            street: '123 First Avenue',
            'type@odata.type': '#microsoft.graph.physicalAddressType',
            type: null
        },
        coordinates: null,
        displayName: 'Customer location',
        locationEmailAddress: null,
        'locationType@odata.type': '#microsoft.graph.locationType',
        locationType: null,
        locationUri: null,
        uniqueId: null,
        'uniqueIdType@odata.type': '#microsoft.graph.locationUniqueIdType',
        uniqueIdType: null
    },
    serviceName: 'Catered bento',
    serviceNotes: 'Customer requires punctual service.',
    start: {
        '@odata.type': '#microsoft.graph.dateTimeTimeZone',
        dateTime: '2018-05-01T12:00:00.0000000+00:00',
        timeZone: 'UTC'
    },
    maximumAttendeesCount: 5,
    filledAttendeesCount: 1,
    customers: [
        {
            '@odata.type': '#microsoft.graph.bookingCustomerInformation',
            customerId: '7ed53fa5-9ef2-4f2f-975b-27447440bc09',
            name: 'Jordan Miller',
            emailAddress: 'jordanm@contoso.com',
            phone: '213-555-0199',
            notes: null,
            location: {
                '@odata.type': '#microsoft.graph.location',
                displayName: 'Customer',
                locationEmailAddress: null,
                locationUri: '',
                locationType: null,
                uniqueId: null,
                uniqueIdType: null,
                address: {
                    '@odata.type': '#microsoft.graph.physicalAddress',
                    type: 'home',
                    postOfficeBox: '',
                    street: '',
                    city: '',
                    state: '',
                    countryOrRegion: '',
                    postalCode: ''
                },
                coordinates: {
                    altitude: null,
                    latitude: null,
                    longitude: null,
                    accuracy: null,
                    altitudeAccuracy: null
                }
            },
            timeZone: 'America/Chicago',
            customQuestionAnswers: [
                {
                    questionId: '3bc6fde0-4ad3-445d-ab17-0fc15dba0774',
                    question: 'What is your age',
                    answerInputType: 'text',
                    answerOptions: [],
                    isRequired: true,
                    answer: '25',
                    selectedOptions: []
                }
            ]
        }
    ]
};

await client.api('/bookingBusinesses/contosolunchdelivery@contoso.onmicrosoft.com/appointments')
	.version('beta')
	.post(bookingAppointment);

```