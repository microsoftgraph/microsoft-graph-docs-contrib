---
title: "Create profileCardProperty"
description: "Create a new profileCardProperty object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create profileCardProperty
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [profileCardProperty](../resources/profilecardproperty.md) object.

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
POST /organization/settings/profileCardProperties
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [profileCardProperty](../resources/profilecardproperty.md) object.

You can specify the following properties when creating a **profileCardProperty**.

|Property|Type|Description|
|:---|:---|:---|
|directoryPropertyName|String|**TODO: Add Description** Optional.|
|annotations|[Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.profileCardAnnotation](../resources/profilecardannotation.md) collection|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [profileCardProperty](../resources/profilecardproperty.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_profilecardproperty_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/organization/settings/profileCardProperties
Content-Type: application/json
Content-length: 235

{
  "@odata.type": "#Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.profileCardProperty",
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
  "truncated": true,
  "@odata.type": "Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.profileCardProperty"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#Microsoft.Fast.PI.ViewGenerator.V2.Profile.Models.profileCardProperty",
  "directoryPropertyName": "String",
  "annotations": [
    {
      "@odata.type": "microsoft.graph.profileCardAnnotation"
    }
  ]
}
```

