---
title: "accessPackageResourceEnvironment resource type"
description: "An access package resource environment is a reference to the geolocation environment in which a resource is located."
author: "markwahl-msft"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# accessPackageResourceEnvironment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Azure AD Entitlement Management](entitlementmanagement-root.md), an access package resource environment is a reference to the geolocation environment in which a resource is located.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List accessPackageResourceEnvironments](../api/accesspackageresourceenvironment-list.md)|[accessPackageResourceEnvironment](../resources/accesspackageresourceenvironment.md) collection|Retrieve a list of [accessPackageResourceEnvironment](../resources/accesspackageresourceenvironment.md) objects.|
|[Get accessPackageResourceEnvironment](../api/accesspackageresourceenvironment-get.md)|[accessPackageResourceEnvironment](../resources/accesspackageresourceenvironment.md)|Read the properties and relationships of an [accessPackageResourceEnvironment](../resources/accesspackageresourceenvironment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|connectionInfo|[connectionInfo](../resources/connectioninfo.md)|Connection information of an environment that is used to connect to a resource. Required.|
|createdBy|String|The display name of the user that created this object.|
|createdDateTime|DateTimeOffset|The date and time that this object was created. <br>The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`.|
|description|String|The description of this *accessPackageResourceEnvironment* object. Required.|
|displayName|String|The display name of this object. Required.|
|id|String|The system-assigned unique identifier of the object. Required.|
|isDefaultEnvironment|Boolean|Determines whether this is default environment or not. This parameter is set to `true` for all the static origin systems like Azure AD groups and Azure AD Applications. Required.|
|modifiedBy|String|The display name of the entity that last modified this object.|
|modifiedDateTime|DateTimeOffset|The date and time that this object was last modified. <br>The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. |
|originId|String|The unique identifier of this environment in the origin system. Required.|
|originSystem|String|The type of the resource in the origin system such as `SharePointOnline`. Required. <br> Supports `$filter`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|accessPackageResources|[accessPackageResource](../resources/accesspackageresource.md) collection|Read-only. Required.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.accessPackageResourceEnvironment",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageResourceEnvironment",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "originSystem": "String",
  "originId": "String",
  "isDefaultEnvironment": "Boolean",
  "connectionInfo": {
    "@odata.type": "microsoft.graph.connectionInfo"
  },
  "createdBy": "String",
  "createdDateTime": "String (timestamp)",
  "modifiedBy": "String",
  "modifiedDateTime": "String (timestamp)"
}
```
