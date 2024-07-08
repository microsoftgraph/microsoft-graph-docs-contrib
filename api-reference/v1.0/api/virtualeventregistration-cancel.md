---
title: "virtualEventRegistration: cancel"
description: "Cancel a registrant's registration record for a webinar."
author: "halleclottey-msft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
---

# virtualEventRegistration: cancel
Namespace: microsoft.graph

Cancel a registrant's [registration record](../resources/virtualeventregistration.md) for a [webinar](../resources/virtualeventwebinar.md). 

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualeventregistration-cancel-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventregistration-cancel-permissions.md)]

> [!NOTE]
> - Use delegated permissions to cancel a registration record for a person who has a [Microsoft Entra ID](https://learn.microsoft.com/entra/fundamentals/whatis).
> - Use application permissions to cancel a registration record for an anonymous user. 

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/virtualEvents/webinars/{webinarId}/registrations/{registrationId}/cancel
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "virtualeventregistrationthis.cancel"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/solutions/virtualEvents/webinars/f4b39f1c-520e-4e75-805a-4b0f2016a0c6@a1a56d21-a8a6-4a6b-97f8-ced53d30f143/registrations/127962bb-84e1-7b62-fd98-1c9d39def7b6/cancel
```

---

### Response
The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
