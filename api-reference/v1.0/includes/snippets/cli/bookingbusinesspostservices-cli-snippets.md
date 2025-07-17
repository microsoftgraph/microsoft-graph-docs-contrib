---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc solutions booking-businesses services create --booking-business-id {bookingBusiness-id} --body '{\
    "@odata.type":"#microsoft.graph.bookingService",\
    "defaultDuration":"PT1H30M",\
    "defaultLocation":{\
        "@odata.type":"#microsoft.graph.location",\
        "address":{\
            "@odata.type":"#microsoft.graph.physicalAddress",\
            "city":"Buffalo",\
            "countryOrRegion":"USA",\
            "postalCode":"98052",\
            "postOfficeBox":null,\
            "state":"NY",\
            "street":"4567 First Street",\
            "type@odata.type":"#microsoft.graph.physicalAddressType",\
            "type":null\
        },\
        "coordinates":null,\
        "displayName":"Contoso Lunch Delivery",\
        "locationEmailAddress":null,\
        "locationType@odata.type":"#microsoft.graph.locationType",\
        "locationType":null,\
        "locationUri":null,\
        "uniqueId":null,\
        "uniqueIdType@odata.type":"#microsoft.graph.locationUniqueIdType",\
        "uniqueIdType":null\
    },\
    "defaultPrice":10.0,\
    "defaultPriceType@odata.type":"#microsoft.graph.bookingPriceType",\
    "defaultPriceType":"fixedPrice",\
    "defaultReminders@odata.type":"#Collection(microsoft.graph.bookingReminder)",\
    "defaultReminders":[\
        {\
            "@odata.type":"#microsoft.graph.bookingReminder",\
            "message":"Please be reminded that this service is tomorrow.",\
            "offset":"P1D",\
            "recipients@odata.type":"#microsoft.graph.bookingReminderRecipients",\
            "recipients":"allAttendees"\
        }\
    ],\
    "description":"Individual bento box lunch delivery",\
    "displayName":"Bento",\
    "isLocationOnline": true,\
    "smsNotificationsEnabled": true,\
    "isCustomerAllowedToManageBooking": true,\
    "languageTag": "en-US",\
    "isHiddenFromCustomers":false,\
    "notes":"Home-cooked special",\
    "postBuffer":"PT10M",\
    "preBuffer":"PT5M",\
    "schedulingPolicy":{\
        "@odata.type":"#microsoft.graph.bookingSchedulingPolicy",\
        "allowStaffSelection":true,\
        "maximumAdvance":"P10D",\
        "minimumLeadTime":"PT10H",\
        "sendConfirmationsToOwner":true,\
        "timeSlotInterval":"PT1H"\
    },\
    "staffMemberIds@odata.type":"#Collection(String)",\
    "staffMemberIds":[\
        "d90d1e8c-5cfe-48cf-a2d5-966267375b6a",\
        "2f5f8794-0b29-45b5-b56a-2eb5ff7aa880"\
    ],\
    "isAnonymousJoinEnabled": false\
}\
'

```