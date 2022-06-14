---
title: "Get virtualAppointment"
description: "Read the properties and relationships of a virtualAppointment object."
author: "benmicrosoft"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# Get virtualAppointment

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [virtualAppointment](../resources/virtualappointment.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                                            |
|:---------------------------------------|:---------------------------------------------------------------------------------------|
| Delegated (work or school account)     | VirtualAppointment.Read, VirtualAppointment.ReadWrite          |
| Delegated (personal Microsoft account) | Not Supported.                                                                         |
| Application                            | Not supported.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /onlineMeeting/virtualAppointment
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name            | Description               |
| :-------------- | :------------------------ |
| Authorization   | Bearer {token}. Required. |
| Accept-Language | Language. Optional.       |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [virtualAppointment](../resources/virtualappointment.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_virtualappointment"
}
-->
``` http
GET https://graph.microsoft.com/beta/onlineMeeting/virtualAppointment
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.virtualAppointment"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.virtualAppointment",
    "id": "0c7fda79-ff00-f57f-37e3-28183b6d09b5",
    "settings": {
      "@odata.type": "microsoft.graph.virtualAppointmentSettings"
    },
    "appointmentClients": [
      {
        "@odata.type": "microsoft.graph.virtualAppointmentUser"
      }
    ],
    "externalAppointmentId": "String",
    "externalAppointmentUrl": "String",
    "appointmentClientJoinWebUrl": "String"
  }
}
```

