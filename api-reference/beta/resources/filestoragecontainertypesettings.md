---
title: "fileStorageContainerTypeSettings resource type"
description: "Represents the settings associated with a fileStorageContainerType."
author: "javieralvarezchiang"
ms.date: 06/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# fileStorageContainerTypeSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the settings associated with a [fileStorageContainerType](../resources/filestoragecontainertype.md).

> [!NOTE]
> Some values are used when a **fileStorageContainer** is created but aren't affected if the settings are modified afterwards. For example, **maxStoragePerContainerInBytes**.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|agent|[fileStorageContainerTypeAgentSettings](../resources/fileStorageContainerTypeAgentSettings.md)|Contains agent-related settings. Optional|
|consumingTenantOverridables|fileStorageContainerTypeSettingsOverride|A comma-separated list of settings that can be overridden in the consuming tenant. The possible values are: `urlTemplate`, `isDiscoverabilityEnabled`, `isSearchEnabled`, `isItemVersioningEnabled`, `itemMajorVersionLimit`, `maxStoragePerContainerInBytes`, `unknownFutureValue`.|
|isDiscoverabilityEnabled|Boolean|Indicates whether items from containers are surfaced in experiences such as **My Activity** or Microsoft 365.|
|isItemVersioningEnabled|Boolean|Indicates whether item versioning is enabled.|
|isSearchEnabled|Boolean|Indicates whether search is enabled.|
|isSharingRestricted|Boolean|Only the manager and owner can share files in the container if restricted sharing is enabled.|
|itemMajorVersionLimit|Int64|Maximum number of versions. Versioning must be enabled (`"isItemVersioningEnabled"=true`).|
|maxStoragePerContainerInBytes|Int64|Controls maximum storage in bytes.|
|sharingCapability|sharingCapabilities|Sharing capabilities permitted for containers. This value can always be overridden during registration if needed. The possible values are: `disabled`, `externalUserSharingOnly`, `externalUserAndGuestSharing`, `existingExternalUserSharingOnly`, `unknownFutureValue`.|
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
  "consumingTenantOverridables": "fileStorageContainerTypeSettingsOverride",
  "isDiscoverabilityEnabled": "Boolean",
  "isItemVersioningEnabled": "Boolean",
  "isSearchEnabled": "Boolean",
  "isSharingRestricted": "Boolean",
  "itemMajorVersionLimit": "Int64",
  "maxStoragePerContainerInBytes": "Int64",
  "sharingCapability": "String",
  "urlTemplate": "String",
  "agent": {
    "@odata.type": "microsoft.graph.fileStorageContainerTypeAgentSettings"
  }
}
```

