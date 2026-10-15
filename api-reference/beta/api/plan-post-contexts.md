---
title: "Create planContextLink"
description: "Create a new planContextLink object."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# Create planContextLink

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new planContextLink object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "plan-post-contexts-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/plan-post-contexts-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /me/planner/plans_v2/{planId}/contexts
POST /users/{usersId}/planner/plans_v2/{planId}/contexts
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [planContextLink](../resources/plancontextlink.md) object.

You can specify the following properties when creating a **planContextLink**.

|Property|Type|Description|
|:---|:---|:---|
|key|String|Identifier for the context the plan is surfaced in. Optional.|
|displayNameSegments|String collection|Display name segments used to render where the plan is surfaced. Optional.|
|webUrl|String|URL of the surface where the plan is displayed. Optional.|
|associationType|String|Describes how the plan is associated with the surface. Optional.|
|displayAs|plannerPlanContextType|How the context link should be displayed. The possible values are: `teamsTab`, `sharePointPage`, `meetingNotes`, `other`, `unknownFutureValue`, `loopPage`, `project`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `loopPage` , `project`. Optional.|
|isActive|Boolean|Indicates whether the context link is currently active. Optional.|
|customLinkText|String|Custom text used to render the link, if provided. Optional.|
|ownerAppId|String|Application ID of the app that owns the surface the plan is linked from. Optional.|
|isCreation|Boolean|Indicates whether this context link represents the original creation surface for the plan. Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [planContextLink](../resources/plancontextlink.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_plancontextlink_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/me/planner/plans_v2/{planId}/contexts
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.planContextLink",
  "key": "19:abcdef1234567890abcdef1234567890@thread.tacv2",
  "displayNameSegments": [
    "Contoso Project"
  ],
  "webUrl": "https://teams.microsoft.com/l/entity/com.microsoft.teamspace.tab.planner/tab-contoso-project",
  "associationType": "primary",
  "displayAs": "teamsTab",
  "isActive": true,
  "customLinkText": "Project plan",
  "ownerAppId": "4d1c9a3e-7b52-4f8a-9d31-6c2e8f4b9a17",
  "isCreation": true
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.planContextLink"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.planContextLink",
  "id": "901187ee-a684-eeaa-61d0-b0fb4774cdab",
  "key": "String",
  "displayNameSegments": [
    "String"
  ],
  "webUrl": "String",
  "associationType": "String",
  "displayAs": "String",
  "isActive": "Boolean",
  "customLinkText": "String",
  "ownerAppId": "String",
  "isCreation": "Boolean",
  "createdDateTime": "String (timestamp)"
}
```

