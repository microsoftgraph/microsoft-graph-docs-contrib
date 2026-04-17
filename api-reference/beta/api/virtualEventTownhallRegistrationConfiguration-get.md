---
title: "Get virtualEventTownhallRegistrationConfiguration"
description: "Read the properties and relationships of a virtualEventTownhallRegistrationConfiguration object."
author: "garchiro7"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
ms.date: 04/16/2026
---

# Get virtualEventTownhallRegistrationConfiguration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [virtualEventTownhallRegistrationConfiguration](../resources/virtualEventTownhallRegistrationConfiguration.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualEventTownhallRegistrationConfiguration-get" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualEventTownhallRegistrationConfiguration-get-permissions.md)]

> [!NOTE]
>
> To use application permissions for this API, tenant administrators must create an [application access policy](/graph/cloud-communication-online-meeting-application-access-policy) and assign it to a user. This allows the authorized application to access registrants' information from virtual events created by that specific user.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /solutions/virtualEvents/townhalls/{townhallId}/registrationConfiguration
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [virtualEventTownhallRegistrationConfiguration](../resources/virtualEventTownhallRegistrationConfiguration.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_virtualeventtownhallregistrationconfiguration",
  "sampleKeys": ["88b245ac-b0b2-f1aa-e34a-c81c27abdac2@f9448ec4-804b-46af-b810-62085248da33"]
}
-->
``` http

GET https://graph.microsoft.com/beta/solutions/virtualEvents/townhalls/88b245ac-b0b2-f1aa-e34a-c81c27abdac2@f9448ec4-804b-46af-b810-62085248da33/registrationConfiguration
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.virtualEventTownhallRegistrationConfiguration"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.virtualEventTownhallRegistrationConfiguration",
    "id": "83682a88-495c-c490-e452-ce4cc08e0b47",
     "registrationWebUrl": "https://events.teams.microsoft.com/event/88b245ac-b0b2-f1aa-e34a-c81c27abdac2@f9448ec4-804b-46af-b810-62085248da33"
    "capacity": 100,
    "isWaitlistEnabled": false,
    "isManualApprovalEnabled": false
  }
}
```

