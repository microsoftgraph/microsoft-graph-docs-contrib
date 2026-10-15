---
title: "Create plan"
description: "Create a new plan object."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# Create plan

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new plan object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "planneruser-post-v2-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/planneruser-post-v2-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /planner/plans_v2
POST /me/planner/plans_v2
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [plan](../resources/plan.md) object.

You can specify the following properties when creating a **plan**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Title of the plan. Required.|
|container|[planContainer](../resources/plancontainer.md)|Identifies the group, Teams channel, or user that owns the plan. Required, and immutable after creation. Optional.|
|calendar|[planCalendar](../resources/plancalendar.md)|Working-time calendar settings for the plan. Optional.|
|archivalInfo|[plannerArchivalInfo](../resources/plannerarchivalinfo.md)|Information about whether the entity is archived, and when it was archived. Optional.|
|planView|[planView](../resources/planview.md)|Plan-scoped view settings, including category definitions. Optional.|
|contentSensitivityLabelAssignment|[contentSensitivityLabelAssignment](../resources/contentsensitivitylabelassignment.md)|The sensitivity label assigned to content associated with the plan. Optional.|
|hasChat|Boolean|Indicates whether the plan has an associated chat. Optional.|
|duration|Int32|Duration of the plan, in days. Optional.|
|sharedWithContainers|[plannerSharedWithContainer](../resources/plannersharedwithcontainer.md) collection|The list of containers (for example, additional groups or channels) that the plan is shared with. Optional.|
|extensions|[extensionFieldCollection](../resources/extensionfieldcollection.md)|Custom extension field values set on the entity. Supports $select. Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [plan](../resources/plan.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "planneruser_post_v2"
}
-->
``` http
POST https://graph.microsoft.com/beta/planner/plans_v2
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.plan",
  "displayName": "Product Launch Plan",
  "container": {
    "@odata.type": "microsoft.graph.planContainer"
  },
  "calendar": {
    "@odata.type": "microsoft.graph.planCalendar"
  },
  "archivalInfo": {
    "@odata.type": "microsoft.graph.plannerArchivalInfo"
  },
  "planView": {
    "@odata.type": "microsoft.graph.planView"
  },
  "contentSensitivityLabelAssignment": {
    "@odata.type": "microsoft.graph.contentSensitivityLabelAssignment"
  },
  "hasChat": true,
  "duration": 30,
  "sharedWithContainers": [
    {
      "@odata.type": "microsoft.graph.plannerSharedWithContainer"
    }
  ],
  "extensions": {
    "@odata.type": "microsoft.graph.extensionFieldCollection"
  }
}
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
HTTP/1.1 201 Created
Content-Type: application/json

{
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
```

