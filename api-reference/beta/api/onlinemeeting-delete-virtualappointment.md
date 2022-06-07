---
title: "Delete virtualAppointment"
description: "Deletes a virtualAppointment object."
author: "benmicrosoft"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# Delete virtualAppointment

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Deletes a [virtualAppointment](../resources/virtualappointment.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                                            |
|:---------------------------------------|:---------------------------------------------------------------------------------------|
| Delegated (work or school account)     | VirtualAppointment.Read, VirtualAppointment.ReadWrite          |
| Delegated (personal Microsoft account) | Not Supported.                                                                         |
| Application                            | VirtualAppointment.Read.All, VirtualAppointment.ReadWrite.All  |

To use application permission for this API, tenant administrators must create an [application access policy](/graph/cloud-communication-online-meeting-application-access-policy) and grant it to a user to authorize the app configured in the policy to delete online meetings on behalf of that user (with user ID specified in the request path).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /onlineMeeting/virtualAppointment/$ref
```

## Request headers
| Name            | Description               |
| :-------------- | :------------------------ |
| Authorization   | Bearer {token}. Required. |
| Accept-Language | Language. Optional.       |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "delete_virtualappointment"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/onlineMeeting/virtualAppointment
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

