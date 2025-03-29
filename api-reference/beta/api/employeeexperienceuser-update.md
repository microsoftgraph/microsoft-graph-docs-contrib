---
title: "Update employeeExperienceUser"
description: "Update the properties of an employeeExperienceUser object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 03/27/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# Update employeeExperienceUser

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an employeeExperienceUser object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "employeeexperienceuser-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/employeeexperienceuser-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /me/employeeExperience
PATCH /users/{usersId}/employeeExperience
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|



## Response

If successful, this method returns a `200 OK` response code and an updated [employeeExperienceUser](../resources/employeeexperienceuser.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_employeeexperienceuser"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/me/employeeExperience
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.employeeExperienceUser"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.employeeExperienceUser",
  "id": "6d625ed7-745f-e870-5e57-4566d1f2d687"
}
```

