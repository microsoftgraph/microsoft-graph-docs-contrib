---
title: "List customSecurityAttributeDefinitions"
description: "Get a list of the customSecurityAttributeDefinition objects and their properties."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# List customSecurityAttributeDefinitions
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [customSecurityAttributeDefinition](../resources/customsecurityattributedefinition.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CustomSecAttributeDefinition.Read.All (Available soon), CustomSecAttributeDefinition.ReadWrite.All, CustomSecAttributeAssignment.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|CustomSecAttributeDefinition.Read.All (Available soon), CustomSecAttributeDefinition.ReadWrite.All, CustomSecAttributeAssignment.ReadWrite.All|

The signed-in user must also be assigned the Attribute Definition Reader, Attribute Definition Administrator, or Attribute Assignment Administrator directory roles that permits them to list custom security attribute definitions. By default, Global Administrator and other administrator roles do not have permissions to read, filter, define, manage, or assign custom security attributes.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /directory/customSecurityAttributeDefinitions
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [customSecurityAttributeDefinition](../resources/customsecurityattributedefinition.md) objects in the response body.

## Examples

### Example 1: Get all custom security attributes

The following example gets all custom security attributes in a tenant.

#### Request
<!-- {
  "blockType": "request",
  "name": "list_customsecurityattributedefinition"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/customSecurityAttributeDefinitions
```


#### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.customSecurityAttributeDefinition)",
  "name": "list_customsecurityattributedefinition"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/customSecurityAttributeDefinitions",
    "value": [
        {
            "attributeSet": "Engineering",
            "description": "Active projects for user",
            "id": "Engineering_Project",
            "isCollection": true,
            "isSearchable": true,
            "name": "Project",
            "status": "Available",
            "type": "String",
            "usePreDefinedValuesOnly": true,
            "advancedOptions": []
        },
        {
            "attributeSet": "Engineering",
            "description": "Target completion date",
            "id": "Engineering_ProjectDate",
            "isCollection": false,
            "isSearchable": true,
            "name": "ProjectDate",
            "status": "Available",
            "type": "String",
            "usePreDefinedValuesOnly": false,
            "advancedOptions": []
        },
        {
            "attributeSet": "Operations",
            "description": "Target completion date",
            "id": "Operations_Level",
            "isCollection": false,
            "isSearchable": true,
            "name": "Deployment level",
            "status": "Available",
            "type": "String",
            "usePreDefinedValuesOnly": true,
            "advancedOptions": []
        }
    ]
}
```

### Example 2: Filter custom security attributes based on name

The following example filters custom security attributes that are named Project and are active.

#### Request
<!-- {
  "blockType": "request",
  "name": "list_customsecurityattributedefinition_filter_name"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/customSecurityAttributeDefinitions?$filter=name+eq+'Project'%20and%20status+eq+'Available'
```


#### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.customSecurityAttributeDefinition)",
  "name": "list_customsecurityattributedefinition_filter_name"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/customSecurityAttributeDefinitions",
    "value": [
        {
            "attributeSet": "Engineering",
            "description": "Active projects for user",
            "id": "Engineering_Project",
            "isCollection": true,
            "isSearchable": true,
            "name": "Project",
            "status": "Available",
            "type": "String",
            "usePreDefinedValuesOnly": true,
            "advancedOptions": []
        },
        {
            "attributeSet": "Operations",
            "description": "Approved projects",
            "id": "Operations_Project",
            "isCollection": true,
            "isSearchable": true,
            "name": "Project",
            "status": "Available",
            "type": "String",
            "usePreDefinedValuesOnly": true,
            "advancedOptions": []
        }
    ]
}
```

### Example 3: Filter custom security attributes based on attribute set

The following example filters custom security attributes that are in the Engineering attribute set and are active.

#### Request
<!-- {
  "blockType": "request",
  "name": "list_customsecurityattributedefinition_filter_attributeset"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/customSecurityAttributeDefinitions?$filter=attributeSet+eq+'Engineering'%20and%20status+eq+'Available'%20and%20type+eq+'String'
```


#### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.customSecurityAttributeDefinition)",
  "name": "list_customsecurityattributedefinition_filter_attributeset"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/customSecurityAttributeDefinitions",
    "value": [
        {
            "attributeSet": "Engineering",
            "description": "Active projects for user",
            "id": "Engineering_Project",
            "isCollection": true,
            "isSearchable": true,
            "name": "Project",
            "status": "Available",
            "type": "String",
            "usePreDefinedValuesOnly": true,
            "advancedOptions": []
        },
        {
            "attributeSet": "Engineering",
            "description": "Target completion date (YYYY/MM/DD)",
            "id": "Engineering_ProjectDate",
            "isCollection": false,
            "isSearchable": true,
            "name": "ProjectDate",
            "status": "Available",
            "type": "String",
            "usePreDefinedValuesOnly": false,
            "advancedOptions": []
        }
    ]
}
```
