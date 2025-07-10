---
title: "fileStorageContainerTypeRegistrationSettings resource type"
description: "Settings associated with a fileStorageContainerTypeRegistration"
author: "javieralvarezchiang"
ms.date: 06/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# fileStorageContainerTypeRegistrationSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Settings associated with a fileStorageContainerTypeRegistration. Some of these settings can be read only, 
depending on the [settings of the fileStorageContainerType](fileStorageContainerTypeSettings.md), which define which settings are overridable.

> [!NOTE]
> Some values are used when a fileStorageContainer is created but aren't affected if the settings are modified afterwards. For example, maxStoragePerContainerInBytes.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isDiscoverabilityEnabled|Boolean|Enables or disables surface of items from containers in experiences like my activity or M356|
|isItemVersioningEnabled|Boolean|Controls item versioning.|
|isSearchEnabled|Boolean|Defines if search is enabled.|
|isSharingRestricted|Boolean|Only manager and owner can share files in the container if restricted sharing is true.|
|itemMajorVersionLimit|Int64|Maximum number of versions. Versioning must be enabled.|
|maxStoragePerContainerInBytes|Int64|Controls maximum storage in bytes.|
|sharingCapability|sharingCapabilities|Sharing capabilities permitted for containers. The possible values are: `disabled`, `externalUserSharingOnly`, `externalUserAndGuestSharing`, `existingExternalUserSharingOnly`. Can always be updated|
|urlTemplate|String|Pattern used to redirect files.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.fileStorageContainerTypeRegistrationSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.fileStorageContainerTypeRegistrationSettings",
  "sharingCapability": "String",
  "urlTemplate": "String",
  "isDiscoverabilityEnabled": "Boolean",
  "isSearchEnabled": "Boolean",
  "isItemVersioningEnabled": "Boolean",
  "itemMajorVersionLimit": "Integer",
  "maxStoragePerContainerInBytes": "Integer",
  "isSharingRestricted": "Boolean"
}
```

