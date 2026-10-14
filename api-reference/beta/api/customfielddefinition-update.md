---
title: "Update customFieldDefinition"
description: "Update the properties of a customFieldDefinition object."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# Update customFieldDefinition

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a customFieldDefinition object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "customfielddefinition-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/customfielddefinition-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /me/planner/plans_v2/{planId}/customFieldDefinitions/{customFieldDefinitionId}
PATCH /users/{usersId}/planner/plans_v2/{planId}/customFieldDefinitions/{customFieldDefinitionId}
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
|planId|String|ID of the plan the custom field is defined on. Required, and immutable after creation. Required.|
|displayName|String|Name of the custom field. Required.|
|valueType|customFieldValueType|Data type of the custom field's values.. The possible values are: `text`, `date`, `utcDateTime`, `number`, `decimal`, `flag`, `singleChoiceText`, `multipleChoiceText`, `unknownFutureValue`. Optional.|
|rollupType|customFieldRollupType|How values of this custom field are rolled up across tasks. The possible values are: `noRollup`, `max`, `min`, `sum`, `average`, `unknownFutureValue`. Optional.|
|archivalInfo|[plannerArchivalInfo](../resources/plannerarchivalinfo.md)|Information about whether the entity is archived, and when it was archived. Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [customFieldDefinition](../resources/customfielddefinition.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_customfielddefinition"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/me/planner/plans_v2/{planId}/customFieldDefinitions/{customFieldDefinitionId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.customFieldDefinition",
  "planId": "b3d9f9a2-3e14-4a4b-9b2b-6b6d9e6a2f31",
  "displayName": "Budget",
  "valueType": "number",
  "rollupType": "sum",
  "archivalInfo": {
    "@odata.type": "microsoft.graph.plannerArchivalInfo"
  }
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.customFieldDefinition"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.customFieldDefinition",
  "id": "590f4e29-112d-432c-491b-21a16ed31803",
  "planId": "String",
  "displayName": "String",
  "valueType": "String",
  "rollupType": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "deletedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "deletedDateTime": "String (timestamp)",
  "archivalInfo": {
    "@odata.type": "microsoft.graph.plannerArchivalInfo"
  }
}
```

