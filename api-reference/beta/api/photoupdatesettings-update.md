---
title: "Update photoUpdateSettings"
description: "Update the properties of a photoUpdateSettings object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update photoUpdateSettings

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [photoUpdateSettings](../resources/photoupdatesettings.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "photoupdatesettings-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/photoupdatesettings-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /admin/people/photoUpdateSettings
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
|source|photoUpdateSource|**TODO: Add Description**. The possible values are: `cloud`, `onPremises`, `unknownFutureValue`. Optional.|
|allowedRoles|String collection|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [photoUpdateSettings](../resources/photoupdatesettings.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_photoupdatesettings"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/admin/people/photoUpdateSettings
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.photoUpdateSettings",
  "source": "String",
  "allowedRoles": [
    "String"
  ]
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
  "@odata.type": "#microsoft.graph.photoUpdateSettings",
  "id": "20a03e03-52a3-3c97-6c4f-db600fca32ba",
  "source": "String",
  "allowedRoles": [
    "String"
  ]
}
```

