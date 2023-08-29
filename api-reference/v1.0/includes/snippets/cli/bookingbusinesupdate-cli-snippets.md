---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc solutions booking-businesses patch --booking-business-id {bookingBusiness-id} --body '{\
  "email": "admin@fabrikam.com",\
  "schedulingPolicy": {\
      "timeSlotInterval": "PT60M",\
      "minimumLeadTime": "P1D",\
      "maximumAdvance": "P30D",\
      "sendConfirmationsToOwner": true,\
      "allowStaffSelection": true\
  }\
}\
'

```