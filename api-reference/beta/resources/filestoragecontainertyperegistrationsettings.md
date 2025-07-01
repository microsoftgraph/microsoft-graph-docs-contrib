---
title: "fileStorageContainerTypeRegistrationSettings resource type"
description: "**TODO: Add Description**"
author: "javieralvarezchiang"
ms.date: 06/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# fileStorageContainerTypeRegistrationSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


## Properties
|Property|Type|Description|
|:---|:---|:---|
|isDiscoverabilityEnabled|Boolean|**TODO: Add Description**|
|isItemVersioningEnabled|Boolean|**TODO: Add Description**|
|isSearchEnabled|Boolean|**TODO: Add Description**|
|isSharingRestricted|Boolean|**TODO: Add Description**|
|itemMajorVersionLimit|Int64|**TODO: Add Description**|
|maxStoragePerContainerInBytes|Int64|**TODO: Add Description**|
|sharingCapability|sharingCapabilities|**TODO: Add Description**.The possible values are: `disabled`, `externalUserSharingOnly`, `externalUserAndGuestSharing`, `existingExternalUserSharingOnly`, `unknownFutureValue`.|
|urlTemplate|String|**TODO: Add Description**|

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

