---
title: "Update customSecurityAttributeDefinition"
description: "Update the properties of a customSecurityAttributeDefinition object."
author: "CecilyK"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# Update customSecurityAttributeDefinition
Namespace: microsoft.graph



Update the properties of a [customSecurityAttributeDefinition](../resources/customsecurityattributedefinition.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CustomSecAttributeDefinition.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|CustomSecAttributeDefinition.ReadWrite.All|

The signed-in user must also be assigned the Attribute Definition Administrator [directory role](/azure/active-directory/roles/permissions-reference). By default, Global Administrator and other administrator roles do not have permissions to read, define, or assign custom security attributes.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /directory/customSecurityAttributeDefinitions/{customSecurityAttributeDefinitionId}
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
|description|String|Description of the custom security attribute. Can be up to 128 characters long and include Unicode characters. Optional.|
|status|String|Specifies whether the custom security attribute is active or deactivated. Acceptable values are `Available` and `Deprecated`. Required.|
|usePreDefinedValuesOnly|Boolean|Indicates whether only predefined values can be assigned to the custom security attribute. If set to false, free-form values are allowed. Can be changed from true to false, but cannot be changed from false to true. If `type` is set to Boolean, `usePreDefinedValuesOnly` cannot be set to true. Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [customSecurityAttributeDefinition](../resources/customsecurityattributedefinition.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_customsecurityattributedefinition"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/directory/customSecurityAttributeDefinitions/{customSecurityAttributeDefinitionId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.customSecurityAttributeDefinition",
  "description": "String",
  "status": "String",
  "usePreDefinedValuesOnly": "Boolean"
}
```


### Response
The following is an example of the response
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
  "@odata.type": "#microsoft.graph.customSecurityAttributeDefinition",
  "id": "ae2dd02c-6061-896c-9f53-3583b6a7163b",
  "description": "String",
  "status": "String",
  "usePreDefinedValuesOnly": "Boolean"
}
```
