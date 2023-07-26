---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc solutions booking-businesses appointments patch --booking-business-id {bookingBusiness-id} --booking-appointment-id {bookingAppointment-id} --body '{\
    "@odata.type":"#microsoft.graph.bookingAppointment",\
    "endDateTime":{\
        "@odata.type":"#microsoft.graph.dateTimeTimeZone",\
        "dateTime":"2018-05-06T12:30:00.0000000+00:00",\
        "timeZone":"UTC"\
    },\
    "startDateTime":{\
        "@odata.type":"#microsoft.graph.dateTimeTimeZone",\
        "dateTime":"2018-05-06T12:00:00.0000000+00:00",\
        "timeZone":"UTC"\
    }\
}\
'

```