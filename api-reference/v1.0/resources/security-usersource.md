---
title: "userSource resource type"
description: "The container for a user's mailbox and OneDrive for Business site."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: resourcePageType
ms.date: 06/10/2024
---

# userSource resource type

Namespace: microsoft.graph.security



The container for a user's mailbox and OneDrive for Business site.

Inherits from [dataSource](../resources/security-datasource.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
| **eDiscovery custodian** |||
|[List](../api/security-ediscoverycustodian-list-usersources.md)|[microsoft.graph.security.userSource](../resources/security-usersource.md) collection|Get a list of the [userSource](../resources/security-usersource.md) objects associated with an [ediscoveryCustodian](../resources/security-ediscoverycustodian.md) or [ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md).|
|[Create](../api/security-ediscoverycustodian-post-usersources.md)|[microsoft.graph.security.userSource](../resources/security-usersource.md)|Create a new [userSource](../resources/security-usersource.md) object associated with an [ediscoveryCustodian](../resources/security-ediscoverycustodian.md).|
|[Delete](../api/security-ediscoverycustodian-delete-usersources.md)|None|Delete a [userSource](../resources/security-usersource.md) object associated with an [ediscoveryCustodian](../resources/security-ediscoverycustodian.md).|
| **eDiscovery hold policy** |||
|[List](../api/security-ediscoveryholdpolicy-list-usersources.md)|[microsoft.graph.security.userSource](../resources/security-usersource.md) collection|Get a list of the [userSource](../resources/security-usersource.md) objects associated with an [ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md).|
|[Create](../api/security-ediscoveryholdpolicy-post-usersources.md)|[microsoft.graph.security.userSource](../resources/security-usersource.md)|Create a new [userSource](../resources/security-usersource.md) object.|
|[Delete](../api/security-ediscoveryholdpolicy-delete-usersources.md)|None|Delete a [userSource](../resources/security-usersource.md) object associated with an [ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The user who created the **userSource**.|
|createdDateTime|DateTimeOffset|The date and time the **userSource** was created.|
|displayName|String|The display name associated with the mailbox and site.|
|email|String|Email address of the user's mailbox.|
|holdStatus|microsoft.graph.security.dataSourceHoldStatus|The hold status of the **userSource**. The possible values are: `notApplied`, `applied`, `applying`, `removing`, `partial`.|
|id|String|The ID of the **userSource**. This isn't the ID of the actual group.|
|includedSources|microsoft.graph.security.sourceType|Specifies which sources are included in this group. The possible values are: `mailbox`, `site`.|
|siteWebUrl|String|The URL of the user's OneDrive for Business site. Read-only.|


### userSourceHoldStatus values

|Name|Description|
|:----|-----------|
|notApplied|The userSource isn't on hold (all sources in it aren't on hold).|
|applied|The userSource is on hold (all sources are on hold).|
|applying|The userSource is in applying hold state (applyHold operation triggered).|
|removing|The userSource is in removing the hold state (removeHold operation triggered).|
|partial|The userSource is in mixed state where some sources are on hold and some not on hold or error state.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.userSource",
  "baseType": "microsoft.graph.security.dataSource",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.userSource",
  "id": "String (identifier)",
  "displayName": "String",
  "holdStatus": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "email": "String",
  "includedSources": "String",
  "siteWebUrl": "String"
}
```
