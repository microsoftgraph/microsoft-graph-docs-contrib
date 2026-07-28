---
title: "Get remoteTenantGroup"
description: "Read the properties and relationships of a remoteTenantGroup object."
author: "hafowler"
ms.date: 07/07/2026
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: apiPageType
---

# Get remoteTenantGroup

Namespace: microsoft.graph

Read the properties and relationships of a [remoteTenantGroup](../resources/remotetenantgroup.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "remotetenantgroup-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/remotetenantgroup-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /directory/remoteTenantGroups/{remoteTenantGroupId}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [remoteTenantGroup](../resources/remotetenantgroup.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_remotetenantgroup"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/directory/remoteTenantGroups/{remoteTenantGroupId}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.remoteTenantGroup"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.remoteTenantGroup",
  "id": "0d3e7b92-4b1a-4d66-b5dd-6f0f1f0e4f7b",
  "deletedDateTime": null,
  "remoteTenantId": "4a6f0f1d-3e72-4fa9-8cb7-2b2fd9f3f411",
  "remoteGroupId": "ef5f0950-6d2a-4c84-8df0-7f0b1a9ac0d8",
  "remoteTenantDisplayName": "Contoso Ltd.",
  "remoteTenantPrimaryDomain": "contoso.onmicrosoft.com",
  "remoteGroupDisplayName": "Helpdesk Administrators"
}
```
