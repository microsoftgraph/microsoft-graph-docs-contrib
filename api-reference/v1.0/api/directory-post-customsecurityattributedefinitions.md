---
title: "Create customSecurityAttributeDefinition"
description: "Create a new customSecurityAttributeDefinition object."
author: "CecilyK"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# Create customSecurityAttributeDefinition
Namespace: microsoft.graph

Create a new [customSecurityAttributeDefinition](../resources/customsecurityattributedefinition.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CustomSecAttributeDefinition.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|CustomSecAttributeDefinition.ReadWrite.All|

The signed-in user must also be assigned the Attribute Definition Administrator [directory role](/azure/active-directory/roles/permissions-reference. By default, Global Administrator and other administrator roles do not have permissions to read, define, or assign custom security attributes.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /directory/customSecurityAttributeDefinitions
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [customSecurityAttributeDefinition](../resources/customsecurityattributedefinition.md) object.

You can specify the following properties when creating a **customSecurityAttributeDefinition**.

|Property|Type|Description|
|:---|:---|:---|
|attributeSet|String|Name of the attribute set. Case insensitive. Required.|
|description|String|Description of the custom security attribute. Can be up to 128 characters long and include Unicode characters. Cannot contain spaces or special characters. Can be changed later. Optional.|
|isCollection|Boolean|Indicates whether multiple values can be assigned to the custom security attribute. Cannot be changed later. If `type` is set to Boolean, `isCollection` cannot be set to true. Required.|
|isSearchable|Boolean|Indicates whether custom security attribute values will be indexed for searching on objects that are assigned attribute values. Cannot be changed later. Required.|
|name|String|Name of the custom security attribute. Must be unique within an attribute set. Can be up to 32 characters long and include Unicode characters. Cannot contain spaces or special characters. Cannot be changed later. Case insensitive. Required.|
|status|String|Specifies whether the custom security attribute is active or deactivated. Acceptable values are `Available` and `Deprecated`. Can be changed later. Required.|
|type|String|Data type for the custom security attribute values. Supported types are `Boolean`, `Integer`, and `String`. Cannot be changed later. Required.|
|usePreDefinedValuesOnly|Boolean|Indicates whether only predefined values can be assigned to the custom security attribute. If set to false, free-form values are allowed. Can later be changed from true to false, but cannot be changed from false to true. If `type` is set to Boolean, `usePreDefinedValuesOnly` cannot be set to true. Required.|

The `id` property is auto generated and cannot be set.

## Response

If successful, this method returns a `201 Created` response code and a [customSecurityAttributeDefinition](../resources/customsecurityattributedefinition.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_customsecurityattributedefinition_from_"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/directory/customSecurityAttributeDefinitions
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.customSecurityAttributeDefinition",
  "attributeSet": "String",
  "description": "String",
  "isCollection": "Boolean",
  "isSearchable": "Boolean",
  "name": "String",
  "status": "String",
  "type": "String",
  "usePreDefinedValuesOnly": "Boolean"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.customSecurityAttributeDefinition"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.customSecurityAttributeDefinition",
  "id": "ae2dd02c-6061-896c-9f53-3583b6a7163b",
  "attributeSet": "String",
  "description": "String",
  "isCollection": "Boolean",
  "isSearchable": "Boolean",
  "name": "String",
  "status": "String",
  "type": "String",
  "usePreDefinedValuesOnly": "Boolean"
}
```

