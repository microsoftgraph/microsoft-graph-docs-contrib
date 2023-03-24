---
title: "ediscoveryHoldPolicy resource type"
description: "*ediscoveryHoldPolicy resource type"
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# ediscoveryHoldPolicy resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a legal hold policy. Legal holds are holds that are tied to an eDiscovery case. Legal holds should not be confused with retention holds, which are used to control retention policies for Microsoft 365 content. eDiscovery legal holds are for holding content indefinitely for litigation, internal investigations, and other legal actions where content needs to be protected against deletion. For more information, see [Manage holds in eDiscovery (Premium)](/microsoft-365/compliance/managing-holds)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List ediscoveryHoldPolicies](../api/security-ediscoverycase-list-legalholds.md)|[microsoft.graph.security.ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md) collection|Get a list of the [ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md) objects and their properties.|
|[Create ediscoveryHoldPolicy](../api/security-ediscoverycase-post-legalholds.md)|[microsoft.graph.security.ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md)|Create a new [ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md) object.|
|[Get ediscoveryHoldPolicy](../api/security-ediscoveryholdpolicy-get.md)|[microsoft.graph.security.ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md)|Read the properties and relationships of an [ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md) object.|
|[Update ediscoveryHoldPolicy](../api/security-ediscoveryholdpolicy-update.md)|[microsoft.graph.security.ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md)|Update the properties of an [ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md) object.|
|[Delete ediscoveryHoldPolicy](../api/security-ediscoverycase-delete-legalholds.md)|None|Delete an [ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md) object.|
|[List siteSources](../api/security-ediscoverycustodian-list-sitesources.md)|[microsoft.graph.security.siteSource](../resources/security-sitesource.md) collection|Get the siteSource resources from the siteSources navigation property.|
|[Create siteSource](../api/security-ediscoveryholdpolicy-post-sitesources.md)|[microsoft.graph.security.siteSource](../resources/security-sitesource.md)|Create a new siteSource object.|
|[List userSources](../api/security-ediscoverycustodian-list-usersources.md)|[microsoft.graph.security.userSource](../resources/security-usersource.md) collection|Get the userSource resources from the userSources navigation property.|
|[Create userSource](../api/security-ediscoveryholdpolicy-post-usersources.md)|[microsoft.graph.security.userSource](../resources/security-usersource.md)|Create a new userSource object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|contentQuery|String|KQL query that specifies content to be held in the specified locations. To learn more, see [Keyword queries and search conditions for Content Search and eDiscovery](/microsoft-365/compliance/keyword-queries-and-search-conditions).  To hold all content in the specified locations, leave **contentQuery** blank. |
|createdBy|[identitySet](../resources/identityset.md)|The user who created the legal hold. |
|createdDateTime|DateTimeOffset|The date and time the legal hold was created. |
|description|String| The legal hold description. |
|displayName|String| The display name of the legal hold. |
|errors|String collection|Lists any errors that happened while placing the hold. |
|id|String|The ID for the eDiscovery case. Read-only. Inherited from [entity](../resources/entity.md). |
|isEnabled|Boolean|Indicates whether the hold is enabled and actively holding content. |
|lastModifiedBy|[identitySet](../resources/identityset.md)|the user who last modified the legal hold.|
|lastModifiedDateTime|DateTimeOffset|The date and time the legal hold was last modified. |
|status|microsoft.graph.security.policyStatus|The status of the legal hold. Possible values are: `Pending`, `Error`, `Success`.|

### policyStatus values

|Member|Description|
|:---|-----------|
|Pending| The hold distribution process is in progress. |
|Error| There was an error when the hold was applied. |
|Success| The hold was successfully applied and is holding the specified content. |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|siteSources|[microsoft.graph.security.siteSource](../resources/security-sitesource.md) collection|Data sources that represent SharePoint sites.|
|userSources|[microsoft.graph.security.userSource](../resources/security-usersource.md) collection|Data sources that represent Exchange mailboxes.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.ediscoveryHoldPolicy",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.ediscoveryHoldPolicy",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "status": "String",
  "isEnabled": "Boolean",
  "contentQuery": "String",
  "errors": [
    "String"
  ]
}
```

