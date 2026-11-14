---
title: "Update plan"
description: "Update the properties of a plan object."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# Update plan

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a plan object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "plan_update_permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/plan-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /planner/plans_v2/{planId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|
|If-Match|The complete ETag of the resource to update or delete. Required.|

Use the complete ETag returned by the latest read of this resource as the `If-Match` value. Don't construct or compare ETags yourself. A missing, invalid, or no-longer-usable ETag results in `412 Precondition Failed`. A conflicting change can result in `409 Conflict`; read the resource again and reconcile the changes before retrying. An older ETag doesn't necessarily fail when the service can merge nonconflicting changes.

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Title of the plan.|
|calendar|[planCalendar](../resources/plancalendar.md)|Working-time calendar settings for the plan.|
|planView|[planView](../resources/planview.md)|Plan-scoped view settings, including category definitions.|
|contentSensitivityLabelAssignment|[contentSensitivityLabelAssignment](../resources/contentsensitivitylabelassignment.md)|The sensitivity label assigned to content associated with the plan.|
|sharedWithContainers|[plannerSharedWithContainer](../resources/plannersharedwithcontainer.md) collection|The list of containers (for example, additional groups or channels) that the plan is shared with.|
|extensions|[extensionFieldCollection](../resources/extensionfieldcollection.md)|Custom extension field values set on the entity. Supports $select.|


Send only the properties that you want to change. Don't include immutable or service-populated properties from a GET response.

## Response

If successful, this method returns a `200 OK` response code and an updated [plan](../resources/plan.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_plan"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/planner/plans_v2/{planId}
If-Match: {etag}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.plan",
  "displayName": "Product launch - phase 2"
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
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.plan",
  "id": "da037802-c736-af41-ff32-789862c95bd9",
  "displayName": "Product launch - phase 2",
  "container": {
    "containerId": "5d5a917d-aef4-4fdc-bc99-6048a39aa329",
    "containerType": "group"
  }
}
```

