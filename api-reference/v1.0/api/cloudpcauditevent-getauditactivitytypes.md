---
title: "cloudPcAuditEvent: getAuditActivityTypes"
description: "Get audit activity types by tenant ID."
author: "RuiHou105"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# cloudPcAuditEvent: getAuditActivityTypes

Namespace: microsoft.graph

Get audit activity types by tenant ID.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcauditevent_getauditactivitytypes" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcauditevent-getauditactivitytypes-permissions.md)]

## HTTP request
<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /deviceManagement/virtualEndpoint/auditEvents/getAuditActivityTypes
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a String collection in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "cloudpcauditevent_getauditactivitytypes"
}
-->

``` http
GET https://graph.microsoft.com/v1.0/deviceManagement/virtualEndpoint/auditEvents/getAuditActivityTypes
```
---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(Edm.String)"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    "Get Audit Activity Types value"
  ]
}
```
