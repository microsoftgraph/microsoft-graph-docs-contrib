---
title: "Update customFieldValue"
description: "Update the properties of a customFieldValue object."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# Update customFieldValue

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a customFieldValue object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "customfieldvalue-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/customfieldvalue-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /me/planner/plans_v2/{planId}/tasks/{taskId}/customFieldValues/{customFieldValueId}
PATCH /users/{usersId}/planner/plans_v2/{planId}/tasks/{taskId}/customFieldValues/{customFieldValueId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|customFieldDefinitionId|String|ID of the customFieldDefinition this value is for. Immutable after creation. Optional.|
|value|String|The value of the custom field, formatted according to the field's valueType. Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [customFieldValue](../resources/customfieldvalue.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_customfieldvalue"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/me/planner/plans_v2/{planId}/tasks/{taskId}/customFieldValues/{customFieldValueId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.customFieldValue",
  "customFieldDefinitionId": "d7f4b8a2-6c31-4d9a-8f21-2b6a9d4e7c31",
  "value": "42500"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.customFieldValue"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.customFieldValue",
  "id": "32618015-76cd-34e6-561e-21ced3b2077b",
  "customFieldDefinitionId": "String",
  "value": "String"
}
```

