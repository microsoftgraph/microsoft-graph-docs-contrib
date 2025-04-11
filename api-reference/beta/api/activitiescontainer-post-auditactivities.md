---
title: "Create audit activity"
toc.title: "Create audit activity (preview)"
description: "Create an audit activity for the signed-in user"
author: "ArunGedela"
ms.date: 04/03/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Create auditActivity

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add an audit activity for the signed-in user. Logs in a structured way to ensure compliance, track user actions, and detect unusual behavior. It captures detailed information about each activity, including timestamps, actions taken, and the involved resources, which are essential for tracking and auditing user interactions and system events.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "activitiescontainer-post-auditactivities-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/activitiescontainer-post-auditactivities-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /me/dataSecurityAndGovernance/activities/auditActivities
POST /users/{usersId}/dataSecurityAndGovernance/activities/auditActivities
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [auditActivity](../resources/auditactivity.md) object.

## Response

If successful, this method returns a `201 Created` response code and an [auditActivity](../resources/auditactivity.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_auditactivity_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/me/dataSecurityAndGovernance/activities/auditActivities
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.auditActivity",
  "recordType": "String",
  "operation": "String",
  "organizationId": "String",
  "userInfo": {
    "@odata.type": "microsoft.graph.auditActivityUserInfo"
  },
  "clientIp": "String",
  "workload": "String",
  "version": "Integer",
  "administrativeUnits": [
    "String"
  ],
  "auditData": {
    "@odata.type": "microsoft.graph.auditData"
  }
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.auditActivity"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.auditActivity",
  "id": "11cac7f0-ee03-1dd1-3400-8006006bd44c",
  "recordType": "String",
  "createdDateTime": "String (timestamp)",
  "operation": "String",
  "organizationId": "String",
  "userInfo": {
    "@odata.type": "microsoft.graph.auditActivityUserInfo"
  },
  "clientIp": "String",
  "workload": "String",
  "version": "Integer",
  "administrativeUnits": [
    "String"
  ],
  "auditData": {
    "@odata.type": "microsoft.graph.auditData"
  }
}
```
