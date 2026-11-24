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

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "planner_post_plans_v2_permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/planner-post-plans-v2-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /planner/plans_v2
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
|container|[planContainer](../resources/plancontainer.md)|Identifies the group, Teams channel, or user that owns the plan. Required. Immutable after creation.|
|calendar|[planCalendar](../resources/plancalendar.md)|Working-time calendar settings for the plan. Optional.|
|planView|[planView](../resources/planview.md)|Plan-scoped view settings, including category definitions. Optional.|
|contentSensitivityLabelAssignment|[contentSensitivityLabelAssignment](../resources/contentsensitivitylabelassignment.md)|The sensitivity label assigned to content associated with the plan. Optional.|
|sharedWithContainers|[plannerSharedWithContainer](../resources/plannersharedwithcontainer.md) collection|The list of containers (for example, additional groups or channels) that the plan is shared with. Optional.|
|extensions|[extensionFieldCollection](../resources/extensionfieldcollection.md)|Custom extension field values set on the entity. Supports $select. Optional.|
|contexts|[planContextLink](../resources/plancontextlink.md) collection|Context links to create with the plan by using a deep insert. Optional.|
|links|[contentLink](../resources/contentlink.md) collection|Content links to create with the plan by using a deep insert. Optional.|

Supply **container** when creating the plan; it can't be changed afterward. Don't include service-generated audit metadata, **archivalInfo**, **duration**, or **hasChat**.

To create a plan and supported related objects in one request, include **contexts** or **links** as arrays. This is a **deep insert**, not a standalone create operation on either child resource. Support for these collections doesn't imply support for arbitrary nested objects, such as tasks, buckets, or goals. Feature availability depends on the plan's capabilities.

## Response

If successful, this method returns a `201 Created` response code and a [plan](../resources/plan.md) object in the response body.

## Examples

### Example 1: Create a plan

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "planner_post_plans_v2"
}
-->
``` http
POST https://graph.microsoft.com/beta/planner/plans_v2
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.plan",
  "displayName": "Product Launch Plan",
  "container": {
    "containerId": "5d5a917d-aef4-4fdc-bc99-6048a39aa329",
    "containerType": "group"
  },
  "sharedWithContainers": []
}
```


#### Response

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
  "displayName": "Product Launch Plan",
  "container": {
    "containerId": "5d5a917d-aef4-4fdc-bc99-6048a39aa329",
    "containerType": "group"
  }
}
```

### Example 2: Create a plan with a context link

#### Request

This request creates a plan and a context link to its SharePoint project page. Replace **containerId** with the ID of an accessible Microsoft 365 group.

<!-- {
  "blockType": "request",
  "name": "planner_post_plans_v2_deep_insert"
} -->
``` http
POST https://graph.microsoft.com/beta/planner/plans_v2
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.plan",
  "displayName": "Product launch",
  "container": {
    "containerType": "group",
    "containerId": "5d5a917d-aef4-4fdc-bc99-6048a39aa329"
  },
  "contexts": [
    {
      "key": "launch-project-page",
      "displayAs": "sharePointPage",
      "webUrl": "https://contoso.sharepoint.com/sites/launch/SitePages/planning.aspx",
      "displayNameSegments": ["Product launch", "Planning"],
      "associationType": "created",
      "isActive": true
    }
  ]
}
```

#### Response

The following response is shortened. To read the created context link, get the returned plan with `$expand=contexts`.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.plan"
} -->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.plan",
  "id": "da037802-c736-af41-ff32-789862c95bd9",
  "displayName": "Product launch",
  "container": {
    "containerType": "group",
    "containerId": "5d5a917d-aef4-4fdc-bc99-6048a39aa329"
  }
}
```
