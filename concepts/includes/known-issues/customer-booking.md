---
author: ombongifaith
ms.topic: include
ms.date: 02/06/2026
ms.localizationpriority: medium
---

### Error when querying bookingBusinesses

<!-- {
  "ms.author": "jhayes",
  "ms.reviewer": ""
} -->

Getting the list of **bookingBusinesses** fails with the following error code when an organization has several Bookings businesses and the account making the request is not an administrator:

```json
{
  "error": {
    "code": "ErrorExceededFindCountLimit",
    "message": "The GetBookingMailboxes request returned too many results. Please specify a query to limit the results."
  }
}
```

#### Workaround

You can limit the set of businesses returned by the request by including a query parameter, for example:

```http
GET https://graph.microsoft.com/beta/bookingBusinesses?query=Fabrikam
```
