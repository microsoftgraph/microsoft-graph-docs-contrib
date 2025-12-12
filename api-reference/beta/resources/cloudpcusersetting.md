---
title: "cloudPcUserSetting resource type"
description: "Represents a Cloud PC user setting."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 10/08/2024
---

# cloudPcUserSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Cloud PC user setting.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/virtualendpoint-list-usersettings.md)|[cloudPcUserSetting](../resources/cloudpcusersetting.md) collection|Get a list of the [cloudPcUserSetting](../resources/cloudpcusersetting.md) objects and their properties.|
|[Get](../api/cloudpcusersetting-get.md)|[cloudPcUserSetting](../resources/cloudpcusersetting.md)|Read the properties and relationships of a [cloudPcUserSetting](../resources/cloudpcusersetting.md) object.|
|[Create](../api/virtualendpoint-post-usersettings.md)|[cloudPcUserSetting](../resources/cloudpcusersetting.md)|Create a new [cloudPcUserSetting](../resources/cloudpcusersetting.md) object.|
|[Update](../api/cloudpcusersetting-update.md)|[cloudPcUserSetting](../resources/cloudpcusersetting.md)|Update the properties of a [cloudPcUserSetting](../resources/cloudpcusersetting.md) object.|
|[Delete](../api/cloudpcusersetting-delete.md)|None|Delete a [cloudPcUserSetting](../resources/cloudpcusersetting.md) object.|
|[Assign](../api/cloudpcusersetting-assign.md)|None|Assign a [cloudPcUserSetting](../resources/cloudpcusersetting.md) to user groups.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time the setting was created. The timestamp type represents the date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 looks like this: '2014-01-01T00:00:00Z'. |
|crossRegionDisasterRecoverySetting|[cloudPcCrossRegionDisasterRecoverySetting](../resources/cloudpccrossregiondisasterrecoverysetting.md)|Defines whether the user's Cloud PC enables cross-region disaster recovery and specifies the network for the disaster recovery.|
|displayName|String|The setting name displayed in the user interface. |
|id|String|Unique identifier for the Cloud PC user setting. Read-only.|
|lastModifiedDateTime|DateTimeOffset|The last date and time the setting was modified. The timestamp type represents the date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 looks like this: '2014-01-01T00:00:00Z'. |
|localAdminEnabled|Boolean|Indicates whether the local admin option is enabled. Default value is `false`. To enable the local admin option, change the setting to `true`. If the local admin option is enabled, the end user can be an admin of the Cloud PC device. |
|notificationSetting|[cloudPcNotificationSetting](../resources/cloudpcnotificationsetting.md)|Defines the setting of the Cloud PC notification prompts for the Cloud PC user.|
|provisioningSourceType|[cloudPcProvisioningSourceType](../resources/cloudpcusersetting.md#cloudpcprovisioningsourcetype-values)|Indicates the provisioning source of the Cloud PC prepared for an end user. The possible values are: `image`, `snapshot`, `unknownFutureValue`. The default value is `image`. If this property isn't set or set to `null`, its functionality is the same as setting it to `image`.|
|resetEnabled|Boolean|Indicates whether an end user is allowed to reset their Cloud PC. When `true`, the user is allowed to reset their Cloud PC. When `false`, end-user initiated reset isn't allowed. The default value is `false`. |
|restorePointSetting|[cloudPcRestorePointSetting](../resources/cloudpcrestorepointsetting.md)|Defines how frequently a restore point is created that is, a snapshot is taken) for users' provisioned Cloud PCs (default is 12 hours), and whether the user is allowed to restore their own Cloud PCs to a backup made at a specific point in time.|
|selfServiceEnabled (deprecated)|Boolean|Indicates whether the self-service option is enabled. Default value is `false`. To enable the self-service option, change the setting to `true`. If the self-service option is enabled, the end user is allowed to perform some self-service operations, such as upgrading the Cloud PC through the end user portal. The **selfServiceEnabled** property is deprecated and stopped returning data on December 1, 2023.|

### cloudPcProvisioningSourceType values

| Member             | Description                                                                                                              |
|:-------------------|:-------------------------------------------------------------------------------------------------------------------------|
| image              | Indicates the Windows 365 image that is used as the source to provision the Cloud PC.                                    |
| snapshot           | Indicates that the pre-uploaded VHD snapshot for this end user is used as the source to provision the Cloud PC.          |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.                                                                         |

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
  "crossRegionDisasterRecoverySetting": {"@odata.type": "microsoft.graph.cloudPcCrossRegionDisasterRecoverySetting"},
  "displayName": "String",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "localAdminEnabled": "Boolean",
  "notificationSetting": {"@odata.type": "microsoft.graph.cloudPcNotificationSetting"},
  "provisioningSourceType": "String",
  "resetEnabled": "Boolean",
  "restorePointSetting": {"@odata.type": "microsoft.graph.cloudPcRestorePointSetting"},
  "selfServiceEnabled": "Boolean"
}
```
