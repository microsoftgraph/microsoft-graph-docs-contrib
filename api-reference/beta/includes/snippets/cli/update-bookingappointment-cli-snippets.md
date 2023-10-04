---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta booking-businesses appointments patch --booking-business-id {bookingBusiness-id} --booking-appointment-id {bookingAppointment-id} --body '{\
    "@odata.type":"#microsoft.graph.bookingAppointment",\
    "end":{\
        "@odata.type":"#microsoft.graph.dateTimeTimeZone",\
        "dateTime":"2018-05-06T12:30:00.0000000+00:00",\
        "timeZone":"UTC"\
    },\
    "invoiceDate":{\
        "@odata.type":"#microsoft.graph.dateTimeTimeZone",\
        "dateTime":"2018-05-06T12:30:00.0000000+00:00",\
        "timeZone":"UTC"\
    },\
    "start":{\
        "@odata.type":"#microsoft.graph.dateTimeTimeZone",\
        "dateTime":"2018-05-06T12:00:00.0000000+00:00",\
        "timeZone":"UTC"\
    }\
}\
'

```