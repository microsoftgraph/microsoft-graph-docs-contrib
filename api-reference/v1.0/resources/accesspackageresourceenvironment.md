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

In [Microsoft Entra entitlement management](entitlementmanagement-overview.md), an access package resource environment is a reference to the geolocation environment in which a resource is located. This environment is automatically provided as part of Microsoft Entra entitlement management. The API is only applicable to Multi-Geo SharePoint Online sites.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/entitlementmanagement-list-resourceenvironments.md)|[accessPackageResourceEnvironment](../resources/accesspackageresourceenvironment.md) collection|Retrieve a list of [accessPackageResourceEnvironment](../resources/accesspackageresourceenvironment.md) objects.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|connectionInfo|[connectionInfo](../resources/connectioninfo.md)|Connection information of an environment used to connect to a resource. |
|createdDateTime|DateTimeOffset|The date and time that this object was created. <br>The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|description|String|The description of this object.|
|displayName|String|The display name of this object.|
|id|String|The system-assigned unique identifier of the object.|
|isDefaultEnvironment|Boolean|Determines whether this is default environment or not. It is set to `true` for all static origin systems, such as Microsoft Entra groups and Microsoft Entra Applications.|
|modifiedDateTime|DateTimeOffset|The date and time that this object was last modified. <br>The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |
|originId|String|The unique identifier of this environment in the origin system.|
|originSystem|String|The type of the resource in the origin system, that is, `SharePointOnline`. Requires `$filter` (`eq`).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|resources|[accessPackageResource](../resources/accesspackageresource.md) collection|Read-only. Required.|

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
  "connectionInfo": {
    "@odata.type": "microsoft.graph.connectionInfo"
  },
  "displayName": "String",
  "description": "String",
  "originSystem": "String",
  "originId": "String",
  "isDefaultEnvironment": true,
  "createdDateTime": "String (timestamp)",
  "modifiedDateTime": "String (timestamp)"
}
```
