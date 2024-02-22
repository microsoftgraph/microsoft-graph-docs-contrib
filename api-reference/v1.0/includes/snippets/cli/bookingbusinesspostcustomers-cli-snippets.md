---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc solutions booking-businesses customers create --booking-business-id {bookingBusiness-id} --body '{\
    "@odata.type": "#microsoft.graph.bookingCustomer",\
    "displayName": "Joni Sherman",\
    "emailAddress": "jonis@relecloud.com",\
    "addresses": [\
        {\
            "postOfficeBox":"",\
            "street":"4567 Main Street",\
            "city":"Buffalo",\
            "state":"NY",\
            "countryOrRegion":"USA",\
            "postalCode":"98052",\
            "type":"home"\
        },\
        {\
            "postOfficeBox":"",\
            "street":"4570 Main Street",\
            "city":"Buffalo",\
            "state":"NY",\
            "countryOrRegion":"USA",\
            "postalCode":"98054",\
            "type":"business"\
        }\
    ],\
    "phones": [\
        {\
            "number": "206-555-0100",\
            "type": "home"\
        },\
        {\
            "number": "206-555-0200",\
            "type": "business"\
        }\
     ]\
}\
'

```