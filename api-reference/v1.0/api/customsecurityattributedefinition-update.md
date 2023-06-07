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

[!INCLUDE [rbac-customsecurityattibutes-apis-write](../includes/rbac-for-apis/rbac-customsecurityattibutes-apis-write.md)]

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
|OData-Version|4.01. Required only when updating the predefined values for a custom security attribute. |


## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|description|String|Description of the custom security attribute. Can be up to 128 characters long and include Unicode characters. Optional.|
|status|String|Specifies whether the custom security attribute is active or deactivated. Acceptable values are `Available` and `Deprecated`. Optional.|
|usePreDefinedValuesOnly|Boolean|Indicates whether only predefined values can be assigned to the custom security attribute. If set to `false`, free-form values are allowed. Can be changed from `true` to `false`, but cannot be changed from `false` to `true`. If **type** is set to `Boolean`, **usePreDefinedValuesOnly** cannot be set to `true`. Optional.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Example 1: Update a custom security attribute

The following example updates the description for a custom security attribute definition.

+ Attribute set: `Engineering`
+ Attribute: `ProjectDate`

#### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "update_customsecurityattributedefinition",
  "sampleKeys": ["Engineering_ProjectDate"]
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/directory/customSecurityAttributeDefinitions/Engineering_ProjectDate
Content-Type: application/json

{
  "description": "Target completion date (YYYY/MM/DD)",
}
```

#### Response

The following is an example of the response.

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

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "update_customsecurityattributedefinition_allowedvalues",
  "sampleKeys": ["Engineering_Project"]
}
-->
``` msgraph-interactive
PATCH https://graph.microsoft.com/v1.0/directory/customSecurityAttributeDefinitions/Engineering_Project
Content-Type: application/json
OData-Version: 4.01

{
    "allowedValues@delta": [
        {
            "id": "Baker",
            "isActive": false
        },
        {
            "id": "Skagit",
            "isActive": true
        }
    ]
}
```

#### Response

The following is an example of the response.

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

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "update_customsecurityattributedefinition_deactivate",
  "sampleKeys": ["Engineering_Project"]
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/directory/customSecurityAttributeDefinitions/Engineering_Project
Content-Type: application/json

{
  "status": "Deprecated"
}
```

#### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
