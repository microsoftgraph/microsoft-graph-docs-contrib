---
title: "fileStorageContainerTypeRegistrationSettings resource type"
description: "Represents the settings associated with a fileStorageContainerTypeRegistration."
author: "javieralvarezchiang"
ms.date: 11/12/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# fileStorageContainerTypeRegistrationSettings resource type

Namespace: microsoft.graph

Represents the settings associated with a [fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md). Some of these settings can be read-only, depending on the [settings of the fileStorageContainerType](../resources/filestoragecontainertypesettings.md) that define which settings are overridable.

> [!NOTE]
> Some values are used when a **fileStorageContainer** is created but aren't affected if the settings are modified afterwards. For example, **maxStoragePerContainerInBytes**.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|agent|[fileStorageContainerTypeAgentSettings](../resources/filestoragecontainertypeagentsettings.md)|Contains agent-related settings.|
|isDiscoverabilityEnabled|Boolean|Indicates whether items from containers are surfaced in experiences such as **My Activity** or Microsoft 365.|
|isItemVersioningEnabled|Boolean|Indicates whether item versioning is enabled.|
|isSearchEnabled|Boolean|Indicates whether search is enabled.|
|isSharingRestricted|Boolean|Only the manager and owner can share files in the container if restricted sharing is enabled.|
|itemMajorVersionLimit|Int64|Maximum number of versions. Versioning must be enabled (`"isItemVersioningEnabled"=true`).|
|maxStoragePerContainerInBytes|Int64|Controls maximum storage in bytes.|
|sharingCapability|sharingCapabilities|Sharing capabilities permitted for containers. The possible values are: `disabled`, `externalUserSharingOnly`, `externalUserAndGuestSharing`, `existingExternalUserSharingOnly`, `unknownFutureValue`. Can always be updated.|
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