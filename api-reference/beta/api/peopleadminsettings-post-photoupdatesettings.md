---
title: "Create photoUpdateSettings"
description: "Create a new photoUpdateSettings object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create photoUpdateSettings

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [photoUpdateSettings](../resources/photoupdatesettings.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "peopleadminsettings-post-photoupdatesettings-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/peopleadminsettings-post-photoupdatesettings-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST ** Collection URI for microsoft.graph.photoUpdateSettings not found
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [photoUpdateSettings](../resources/photoupdatesettings.md) object.

You can specify the following properties when creating a **photoUpdateSettings**.


|Property|Type|Description|
|:---|:---|:---|
|source|photoUpdateSource|The possible values are: `cloud`, `onPremises`, `unknownFutureValue`. Optional.|




## Response

If successful, this method returns a `201 Created` response code and a [photoUpdateSettings](../resources/photoupdatesettings.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_photoupdatesettings_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for microsoft.graph.photoUpdateSettings not found
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
  "truncated": true,
  "@odata.type": "microsoft.graph.photoUpdateSettings"
}
-->
``` http
HTTP/1.1 201 Created
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

