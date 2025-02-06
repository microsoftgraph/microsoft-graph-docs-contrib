---
author: "arvindmicrosoft"
ms.localizationpriority: high
ms.subservice: microsoft-bookings
ms.topic: include
---
<!-- markdownlint-disable MD041 -->

The Bookings service applies limits to each app ID and mailbox combination, specifically when a particular app accesses a particular booking mailbox. Exceeding the limit for one mailbox doesn't affect the ability of the application to access another mailbox.

| Limit      | Applies to    |
| -------------- | ------------ |
| Four concurrent requests  | v1.0 and beta endpoints   |

The preceding limits apply to the following resources:
- [business](/graph/api/resources/bookingbusiness)
- [appointment](/graph/api/resources/bookingappointment)
- [customQuestion](/graph/api/resources/bookingcustomquestion)
- [customer](/graph/api/resources/bookingcustomer)
- [service](/graph/api/resources/bookingservice)
- [staffMember](/graph/api/resources/bookingstaffmember)