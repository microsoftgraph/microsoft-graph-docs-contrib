---
title: "Get plan"
description: "Read the properties and relationships of plan object."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# Get plan

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of [plan](../resources/plan.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "plan-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/plan-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /planner/plans_v2/{planId}
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

If successful, this method returns a `200 OK` response code and a [plan](../resources/plan.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_plan"
}
-->
``` http
GET https://graph.microsoft.com/beta/planner/plans_v2/{planId}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.plan"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.plan",
    "id": "da037802-c736-af41-ff32-789862c95bd9",
    "displayName": "String",
    "container": {
      "@odata.type": "microsoft.graph.planContainer"
    },
    "calendar": {
      "@odata.type": "microsoft.graph.planCalendar"
    },
    "creationInfo": {
      "@odata.type": "microsoft.graph.creationInfo"
    },
    "lastModifiedBy": {
      "@odata.type": "microsoft.graph.identitySet"
    },
    "lastModifiedDateTime": "String (timestamp)",
    "archivalInfo": {
      "@odata.type": "microsoft.graph.plannerArchivalInfo"
    },
    "planView": {
      "@odata.type": "microsoft.graph.planView"
    },
    "contentSensitivityLabelAssignment": {
      "@odata.type": "microsoft.graph.contentSensitivityLabelAssignment"
    },
    "hasChat": "Boolean",
    "duration": "Integer",
    "sharedWithContainers": [
      {
        "@odata.type": "microsoft.graph.plannerSharedWithContainer"
      }
    ],
    "capabilities": {
      "@odata.type": "microsoft.graph.planCapability"
    },
    "extensions": {
      "@odata.type": "microsoft.graph.extensionFieldCollection"
    }
  }
}
```

