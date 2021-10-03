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
|attributeSet|String|Name of the group of related custom security attributes. Must be unique within a tenant. Cannot include spaces or special characters. Cannot be changed later.|
|description|String|Description of the custom security attribute. Can be changed later.|
|id|String|Unique identifier of the custom security attribute, which is a combination of the attribute set name and the custom security attribute name separated by an underscore (&lt;attributeSet&gt;_&lt;name&gt;).|
|isCollection|Boolean|Indicates whether multiple values can be assigned to the custom security attribute. Cannot be changed later.|
|isSearchable|Boolean|Indicates whether custom security attribute values will be indexed for searching on objects that are assigned attribute values. Cannot be changed later.|
|name|String|Name of the custom security attribute. Must be unique within an attribute set. Cannot include spaces or special characters. Cannot be changed later.|
|status|String|Specifies whether the custom security attribute is active or deactivated. Acceptable values are `Available` and `Deprecated`. Can be changed later.|
|type|String|Data type for the custom security attribute values. Supported types are Boolean, Integer, and String. Cannot be changed later.|
|usePreDefinedValuesOnly|Boolean|Indicates whether only predefined values can be assigned to the custom security attribute. If set to false, free-form values are allowed. Can later be changed from true to false, but cannot be changed from false to true.|



## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Example 1: Update a custom security attribute

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

### Example 2: Deactivate a custom security attribute

The following example deactivates the Project attribute in the Engineering attribute set.

#### Request
<!-- {
  "blockType": "request",
  "name": "update_customsecurityattributedefinition_deactivate"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/directory/customSecurityAttributeDefinitions/Engineering_Project
Content-Type: application/json
Content-length: 298

{
  "status": "Deprecated"
}
```


#### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "name": "update_customsecurityattributedefinition_deactivate"
}
-->
``` http
HTTP/1.1 204 No Content
```
