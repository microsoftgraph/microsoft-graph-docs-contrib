---
title: "Create content activity"
toc.title: "Create content activity (preview)"
description: "Create a content activity for the signed-in user."
author: "ArunGedela"
ms.date: 04/03/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Create contentActivity

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a content activity for the signed-in user. Logs data from processed content in a structured format to ensure audit compliance, track user actions, and drive anomalous behavior detections. It captures detailed information about each activity, including timestamps, actions taken, and the involved resources, which are essential for tracking and auditing user interactions and system events.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "activitiescontainer-post-contentactivities-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/activitiescontainer-post-contentactivities-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /me/dataSecurityAndGovernance/activities/contentActivities
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [contentActivity](../resources/contentactivity.md) object.

## Response

If successful, this method returns a `201 Created` response code and a [contentActivity](../resources/contentactivity.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_contentactivity_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/me/dataSecurityAndGovernance/activities/contentActivities
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.contentActivity",
  "userId": "String",
  "scopeIdentifier": "String",
  "contentMetadata": {
    "@odata.type": "microsoft.graph.processContentRequest"
  }
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.contentActivity"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.contentActivity",
  "id": "1f35569f-f498-57a1-864f-1cb877964eea",
  "userId": "String",
  "scopeIdentifier": "String",
  "contentMetadata": {
    "@odata.type": "microsoft.graph.processContentRequest"
  }
}
```
