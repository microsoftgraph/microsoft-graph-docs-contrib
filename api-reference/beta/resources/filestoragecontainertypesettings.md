---
title: "fileStorageContainerTypeSettings resource type"
description: "Settings associated with a fileStorageContainerType"
author: "javieralvarezchiang"
ms.date: 06/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# fileStorageContainerTypeSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Configuration associated with a fileStorageContainerType. 

> [!NOTE]
> Some values are used when a fileStorageContainer is created but aren't affected if the settings are modified afterwards. For example, maxStoragePerContainerInBytes.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|consumingTenantOverridables|String|fileStorageContainerTypeSettingsOverrideSettings that can be overridden in the **consuming tenant**, comma separated. The possible values are: `urlTemplate`, `isDiscoverabilityEnabled`, `isSearchEnabled`, `isItemVersioningEnabled`, `itemMajorVersionLimit`, `maxStoragePerContainerInBytes`.|
|isDiscoverabilityEnabled|Boolean|Enables or disables surface of items from containers in experiences like my activity or M356|
|isItemVersioningEnabled|Boolean|Controls item versioning.|
|isSearchEnabled|Boolean|Defines if search is enabled.|
|isSharingRestricted|Boolean|Only manager and owner can share files in the container if restricted sharing is true.|
|itemMajorVersionLimit|Int64|Maximum number of versions. Versioning must be enabled.|
|maxStoragePerContainerInBytes|Int64|Controls maximum storage in bytes.|
|sharingCapability|sharingCapabilities|Sharing capabilities permitted for containers. This value can always be overridden in the registration if needed. The possible values are: `disabled`, `externalUserSharingOnly`, `externalUserAndGuestSharing`, `existingExternalUserSharingOnly`.|
|urlTemplate|String|Pattern used to redirect files.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.fileStorageContainerTypeSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.fileStorageContainerTypeSettings",
  "sharingCapability": "String",
  "urlTemplate": "String",
  "isDiscoverabilityEnabled": "Boolean",
  "isSearchEnabled": "Boolean",
  "isItemVersioningEnabled": "Boolean",
  "itemMajorVersionLimit": "Integer",
  "maxStoragePerContainerInBytes": "Integer",
  "isSharingRestricted": "Boolean",
  "consumingTenantOverridables": "String"
}
```

