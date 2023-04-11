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
|OData-Version|4.01. Optional.|

> [!NOTE]
> To update the predefined values for a custom security attribute, you must add the **OData-Version** header and assign it the value `4.01`.

## Request body
In the request body, supply *only* the values for properties that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values.

The following table specifies the properties that can be updated.

|Property|Type|Description|
|:---|:---|:---|
|description|String|Description of the custom security attribute. Can be up to 128 characters long and include Unicode characters. Optional.|
|status|String|Specifies whether the custom security attribute is active or deactivated. Acceptable values are `Available` and `Deprecated`. Optional.|
|usePreDefinedValuesOnly|Boolean|Indicates whether only predefined values can be assigned to the custom security attribute. If set to false, free-form values are allowed. Can be changed from true to false, but cannot be changed from false to true. If `type` is set to Boolean, `usePreDefinedValuesOnly` cannot be set to true. Optional.|



## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Example 1: Update a custom security attribute

The following example updates the description for a custom security attribute definition.

+ Attribute set: `Engineering`
+ Attribute: `ProjectDate`

#### Request

<!-- {
  "blockType": "request",
  "name": "update_customsecurityattributedefinition",
  "sampleKeys": ["Engineering_ProjectDate"]
}
-->


#### Response
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

### Example 2: Update the predefined values for a custom security attribute

The following example updates the status of an existing predefined value and adds a new predefined value for a custom security attribute definition.

+ Attribute set: `Engineering`
+ Attribute: `Project`
+ Attribute data type: Collection of Strings
+ Update predefined value: `Baker`
+ New predefined value: `Skagit`

> [!NOTE]
> For this request, you must add the **OData-Version** header and assign it the value `4.01`.

#### Request


<!-- {
  "blockType": "request",
  "name": "update_customsecurityattributedefinition_allowedvalues",
  "sampleKeys": ["Engineering_Project"]
}
-->


#### Response
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

### Example 3: Deactivate a custom security attribute

The following example deactivates a custom security attribute definition.

+ Attribute set: `Engineering`
+ Attribute: `Project`

#### Request

<!-- {
  "blockType": "request",
  "name": "update_customsecurityattributedefinition_deactivate",
  "sampleKeys": ["Engineering_Project"]
}
-->


#### Response
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
