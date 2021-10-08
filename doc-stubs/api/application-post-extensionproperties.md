---
title: "Create extensionProperty"
description: "Create a new extensionProperty object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create extensionProperty
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new extensionProperty object.

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
POST /applications/{applicationsId}/extensionProperties
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [extensionProperty](../resources/extensionproperty.md) object.

The following table shows the properties that are required when you create the [extensionProperty](../resources/extensionproperty.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md)|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md)|
|appDisplayName|String|**TODO: Add Description**|
|name|String|**TODO: Add Description**|
|isMultiValued|Boolean|**TODO: Add Description**|
|dataType|String|**TODO: Add Description**|
|isSyncedFromOnPremises|Boolean|**TODO: Add Description**|
|targetObjects|String collection|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and an [extensionProperty](../resources/extensionproperty.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_extensionproperty_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/applications/{applicationsId}/extensionProperties
Content-Type: application/json
Content-length: 305

{
  "@odata.type": "#Microsoft.DirectoryServices.extensionProperty",
  "deletedDateTime": "String (timestamp)",
  "appDisplayName": "String",
  "name": "String",
  "isMultiValued": "Boolean",
  "dataType": "String",
  "isSyncedFromOnPremises": "Boolean",
  "targetObjects": [
    "String"
  ]
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.DirectoryServices.extensionProperty"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#Microsoft.DirectoryServices.extensionProperty",
  "id": "41279b29-9b29-4127-299b-2741299b2741",
  "deletedDateTime": "String (timestamp)",
  "appDisplayName": "String",
  "name": "String",
  "isMultiValued": "Boolean",
  "dataType": "String",
  "isSyncedFromOnPremises": "Boolean",
  "targetObjects": [
    "String"
  ]
}
```

