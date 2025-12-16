---
title: "ediscoveryHoldPolicy resource type"
description: "ediscoveryHoldPolicy resource type"
author: "SeunginLyu"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: resourcePageType
ms.date: 10/28/2024
---

# ediscoveryHoldPolicy resource type

Namespace: microsoft.graph.security

Represents a legal hold policy. Legal holds are holds that are tied to an eDiscovery case. Legal holds should not be confused with retention holds, which are used to control retention policies for Microsoft 365 content. eDiscovery legal holds are for holding content indefinitely for litigation, internal investigations, and other legal actions where content needs to be protected against deletion. For more information, see [Manage holds in eDiscovery (Premium)](/microsoft-365/compliance/managing-holds)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-ediscoverycase-list-legalholds.md)|[microsoft.graph.security.ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md) collection|Get a list of the [ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md) objects and their properties.|
|[Create](../api/security-ediscoverycase-post-legalholds.md)|[microsoft.graph.security.ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md)|Create a new [ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md) object.|
|[Get](../api/security-ediscoveryholdpolicy-get.md)|[microsoft.graph.security.ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md)|Read the properties and relationships of an [ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md) object.|
|[Update](../api/security-ediscoveryholdpolicy-update.md)|[microsoft.graph.security.ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md)|Update the properties of an [ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md) object.|
|[Delete](../api/security-ediscoverycase-delete-legalholds.md)|None|Delete an [ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md) object.|
| **Site sources** |  |  |
|[List](../api/security-ediscoveryholdpolicy-list-sitesources.md)|[microsoft.graph.security.siteSource](../resources/security-sitesource.md) collection|Get a list of the [siteSource](../resources/security-sitesource.md) objects associated with an [ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md).|
|[Create](../api/security-ediscoveryholdpolicy-post-sitesources.md)|[microsoft.graph.security.siteSource](../resources/security-sitesource.md)|Create a new [siteSource](../resources/security-sitesource.md) object.|
|[Delete](../api/security-ediscoveryholdpolicy-delete-sitesources.md)|None|Delete a [siteSource](../resources/security-sitesource.md) object associated with an [ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md).|
| **User sources** |  |  |
|[List](../api/security-ediscoveryholdpolicy-list-usersources.md)|[microsoft.graph.security.userSource](../resources/security-usersource.md) collection|Get a list of the [userSource](../resources/security-usersource.md) objects associated with an [ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md).|
|[Create](../api/security-ediscoveryholdpolicy-post-usersources.md)|[microsoft.graph.security.userSource](../resources/security-usersource.md)|Create a new [userSource](../resources/security-usersource.md) object.|
|[Delete](../api/security-ediscoveryholdpolicy-delete-usersources.md)|None|Delete a [userSource](../resources/security-usersource.md) object associated with an [ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md).|
|[Retry policy](../api/security-ediscoveryholdpolicy-retrypolicy.md)|None|Trigger the hold process to restamp all mailboxes and sites in the policy to enforce a hold.|

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
|status|microsoft.graph.security.policyStatus|The status of the legal hold. The possible values are: `Pending`, `Error`, `Success`.|

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
The following JSON representation shows the resource type.
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

