---
title: "cloudPcUserSetting resource type"
description: "Represents a Cloud PC user setting."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcUserSetting resource type

Namespace: microsoft.graph

Represents a Cloud PC user setting.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List userSettings](../api/virtualendpoint-list-usersettings.md)|[cloudPcUserSetting](../resources/cloudpcusersetting.md) collection|Get a list of [cloudPcUserSetting](../resources/cloudpcusersetting.md) objects and their properties.|
|[Create cloudPcUserSetting](../api/virtualendpoint-post-usersettings.md)|[cloudPcUserSetting](../resources/cloudpcusersetting.md)|Create a new [cloudPcUserSetting](../resources/cloudpcusersetting.md) object.|
|[Get cloudPcUserSetting](../api/cloudpcusersetting-get.md)|[cloudPcUserSetting](../resources/cloudpcusersetting.md)|Read the properties and relationships of a [cloudPcUserSetting](../resources/cloudpcusersetting.md) object.|
|[Update cloudPcUserSetting](../api/cloudpcusersetting-update.md)|[cloudPcUserSetting](../resources/cloudpcusersetting.md)|Update the properties of a [cloudPcUserSetting](../resources/cloudpcusersetting.md) object.|
|[Delete cloudPcUserSetting](../api/cloudpcusersetting-delete.md)|None|Delete a [cloudPcUserSetting](../resources/cloudpcusersetting.md) object.|
|[Assign](../api/cloudpcusersetting-assign.md)|None|Assign a [cloudPcUserSetting](../resources/cloudpcusersetting.md) to user groups.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time when the setting was created. The timestamp type represents the date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |
|displayName|String|The setting name displayed in the user interface. |
|id|String|Unique identifier for the Cloud PC user setting. Read-only. Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the setting was last modified. The timestamp type represents the date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |
|localAdminEnabled|Boolean|Indicates whether the local admin option is enabled. The default value is `false`. To enable the local admin option, change the setting to `true`. If the local admin option is enabled, the end user can be an admin of the Cloud PC device. |
|resetEnabled|Boolean|Indicates whether an end user is allowed to reset their Cloud PC. When `true`, the user is allowed to reset their Cloud PC. When `false`, end-user initiated reset is not allowed. The default value is `false`. |
|restorePointSetting|[cloudPcRestorePointSetting](../resources/cloudpcrestorepointsetting.md)|Defines how frequently a restore point is created that is, a snapshot is taken) for users' provisioned Cloud PCs (default is 12 hours), and whether the user is allowed to restore their own Cloud PCs to a backup made at a specific point in time.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[cloudPcUserSettingAssignment](../resources/cloudpcusersettingassignment.md) collection|Represents the set of Microsoft 365 groups and security groups in Microsoft Entra ID that have **cloudPCUserSetting** assigned. Returned only on `$expand`. For an example, see [Get cloudPcUserSettingample](../api/cloudpcusersetting-get.md).|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcUserSetting",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcUserSetting",
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "id": "String (identifier)",  
  "lastModifiedDateTime": "String (timestamp)",
  "localAdminEnabled": "Boolean",
  "resetEnabled": "Boolean",
  "restorePointSetting": {"@odata.type": "microsoft.graph.cloudPcRestorePointSetting"}
}
```
