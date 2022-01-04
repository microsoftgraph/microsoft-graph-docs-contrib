---
title: "Update profileCardProperty"
description: "Update the properties of a profileCardProperty object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update profileCardProperty
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [profileCardProperty](../resources/profilecardproperty.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /organization/settings/profileCardProperties/{profileCardPropertyId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|directoryPropertyName|String|**TODO: Add Description** Optional.|
|annotations|[Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.profileCardAnnotation](../resources/profilecardannotation.md) collection|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [profileCardProperty](../resources/profilecardproperty.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_profilecardproperty"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/organization/settings/profileCardProperties/{profileCardPropertyId}
Content-Type: application/json
Content-length: 201

{
  "@odata.type": "#microsoft.graph.profileCardProperty",
  "directoryPropertyName": "String",
  "annotations": [
    {
      "@odata.type": "microsoft.graph.profileCardAnnotation"
    }
  ]
}
```


### Response
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
  "@odata.type": "#microsoft.graph.profileCardProperty",
  "directoryPropertyName": "String",
  "annotations": [
    {
      "@odata.type": "microsoft.graph.profileCardAnnotation"
    }
  ]
}
```

