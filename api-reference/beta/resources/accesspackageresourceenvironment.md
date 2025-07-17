---
title: "accessPackageResourceEnvironment resource type"
description: "An access package resource environment is a reference to the geolocation environment in which a resource is located."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# accessPackageResourceEnvironment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Microsoft Entra Entitlement Management](entitlementmanagement-overview.md), an access package resource environment is a reference to the geolocation environment in which a resource is located. This environment is automatically provided as part of Microsoft Entra Entitlement Management. The API is only applicable to Multi-Geo SharePoint Online sites.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/entitlementmanagement-list-accesspackageresourceenvironment.md)|[accessPackageResourceEnvironment](../resources/accesspackageresourceenvironment.md) collection|Retrieve a list of [accessPackageResourceEnvironment](../resources/accesspackageresourceenvironment.md) objects.|
|[Get](../api/accesspackageresourceenvironment-get.md)|[accessPackageResourceEnvironment](../resources/accesspackageresourceenvironment.md)|Read the properties and relationships of an [accessPackageResourceEnvironment](../resources/accesspackageresourceenvironment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|connectionInfo|[connectionInfo](../resources/connectioninfo.md)|Connection information of an environment used to connect to a resource. |
|createdBy|String|The display name of the user that created this object.|
|createdDateTime|DateTimeOffset|The date and time that this object was created. <br>The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|description|String|The description of this object.|
|displayName|String|The display name of this object.|
|id|String|The system-assigned unique identifier of the object.|
|isDefaultEnvironment|Boolean|Determines whether this is default environment or not. It is set to `true` for all static origin systems, such as Microsoft Entra groups and Microsoft Entra Applications.|
|modifiedBy|String|The display name of the entity that last modified this object.|
|modifiedDateTime|DateTimeOffset|The date and time that this object was last modified. <br>The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |
|originId|String|The unique identifier of this environment in the origin system.|
|originSystem|String|The type of the resource in the origin system, that is, `SharePointOnline`. Requires `$filter` (`eq`).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|accessPackageResources|[accessPackageResource](../resources/accesspackageresource.md) collection|Read-only. Required.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.accessPackageResourceEnvironment",
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
