---
title: "Create customFieldValue"
description: "Create a new customFieldValue object."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# Create customFieldValue

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new customFieldValue object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "task-post-customfieldvalues-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/task-post-customfieldvalues-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /users/{usersId}/planner/plans_v2/{planId}/tasks/{taskId}/customFieldValues
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [customFieldValue](../resources/customfieldvalue.md) object.

You can specify the following properties when creating a **customFieldValue**.

|Property|Type|Description|
|:---|:---|:---|
|customFieldDefinitionId|String|ID of the customFieldDefinition this value is for. Immutable after creation. Optional.|
|value|String|The value of the custom field, formatted according to the field's valueType. Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [customFieldValue](../resources/customfieldvalue.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_customfieldvalue_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/users/{usersId}/planner/plans_v2/{planId}/tasks/{taskId}/customFieldValues
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
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.customFieldValue",
  "id": "32618015-76cd-34e6-561e-21ced3b2077b",
  "customFieldDefinitionId": "String",
  "value": "String"
}
```

