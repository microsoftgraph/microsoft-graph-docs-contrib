---
title: "Update customSecurityAttributeDefinition"
description: "Update the properties of a customSecurityAttributeDefinition object."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# Update customSecurityAttributeDefinition
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [customSecurityAttributeDefinition](../resources/customsecurityattributedefinition.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CustomSecAttributeDefinition.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|CustomSecAttributeDefinition.ReadWrite.All|

The signed-in user must also be assigned the Attribute Definition Administrator directory role that permits them to update custom security attribute definitions. By default, Global Administrator and other administrator roles do not have permissions to read, filter, define, manage, or assign custom security attributes.

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
In the request body, supply a JSON representation of the [customSecurityAttributeDefinition](../resources/customsecurityattributedefinition.md) object.

The following table shows the properties that are required when you update the [customSecurityAttributeDefinition](../resources/customsecurityattributedefinition.md).

|Property|Type|Description|
|:---|:---|:---|
|attributeSet|String|Name of the attribute set.|
|description|String|Description of the custom security attribute.|
|id|String|ID of the custom security attribute, which a combination of the attribute set name and attribute name separated by an underscore (&lt;attributeSet&gt;_&lt;name&gt;).|
|isCollection|Boolean|Indicates whether multiple values can be assigned to the custom security attribute.|
|isSearchable|Boolean|Indicates whether custom security attribute values will be indexed for searching on objects that will assigned attribute values.|
|name|String|Name of the custom security attribute.|
|status|String|Specifies whether the custom security attribute is active or has been deactivated (Available or Deprecated). |
|type|String|Data type for the custom security attribute values (Boolean, Integer, or String).|
|usePreDefinedValuesOnly|Boolean|Indicates whether only predefined values can be assigned to the custom security attribute.|



## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Example: Update a custom security attribute

The following example updates the description for the ProjectDate attribute in the Engineering attribute set.

#### Request
<!-- {
  "blockType": "request",
  "name": "update_customsecurityattributedefinition"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/directory/customSecurityAttributeDefinitions/Engineering_ProjectDate
Content-Type: application/json
Content-length: 298

{
  "description": "Target completion date (YYYY/MM/DD)",
}
```


#### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "name": "update_customsecurityattributedefinition"
}
-->
``` http
HTTP/1.1 204 No Content
```
