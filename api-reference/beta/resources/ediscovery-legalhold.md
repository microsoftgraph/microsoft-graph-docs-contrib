---
title: "legalhold resource type"
description: "legalHold resource type"
localization_priority: Normal
author: "mahage-msft"
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# legalhold resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Legal holds are holds that are tied to an eDiscovery case.  Legal holds should not be confused with retention holds which are used to control retention policies of content on Microsoft 365. eDiscovery legal holds are for holding content indefinitely for Litigation, internal investigations, and other legal actions where content needs to be protected against deletion.  For more information about eDiscovery Holds, see [Manage holds in Advanced eDiscovery](https://docs.microsoft.com/microsoft-365/compliance/managing-holds)

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List legalholds](../api/ediscovery-case-list-legalholds.md)|[legalhold](../resources/ediscovery-legalhold.md) collection|Get a list of the [legalhold](../resources/ediscovery-legalhold.md) objects and their properties.|
|[Create legalhold](../api/ediscovery-case-post-legalholds.md)|[legalhold](../resources/ediscovery-legalhold.md)|Create a new [legalhold](../resources/ediscovery-legalhold.md) object.|
|[Get legalhold](../api/ediscovery-legalhold-get.md)|[legalhold](../resources/ediscovery-legalhold.md)|Read the properties and relationships of a [legalhold](../resources/ediscovery-legalhold.md) object.|
|[Update legalhold](../api/ediscovery-legalhold-update.md)|[legalhold](../resources/ediscovery-legalhold.md)|Update the properties of a [legalhold](../resources/ediscovery-legalhold.md) object.|
|[Delete legalhold](../api/ediscovery-legalhold-delete.md)|None|Deletes a [legalhold](../resources/ediscovery-legalhold.md) object.|
|[List siteSources](../api/ediscovery-legalhold-list-sitesources.md)|[siteSource](../resources/ediscovery-sitesource.md) collection|Get the siteSource resources from the siteSources navigation property.|
|[Create siteSource](../api/ediscovery-legalhold-post-sitesources.md)|[siteSource](../resources/ediscovery-sitesource.md)|Create a new siteSource object.|
|[List userSources](../api/ediscovery-legalhold-list-usersources.md)|[userSource](../resources/ediscovery-usersource.md) collection|Get the userSource resources from the userSources navigation property.|
|[Create userSource](../api/ediscovery-legalhold-post-usersources.md)|[userSource](../resources/ediscovery-usersource.md)|Create a new userSource object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|contentQuery|String|KQL query that specifies content to be held in the specified locations - to learn more about KQL in eDiscovery see [Keyword queries and search conditions for Content Search and eDiscovery](https://docs.microsoft.com/microsoft-365/compliance/keyword-queries-and-search-conditions).  To hold all content in the specified locations, leave contentQuery blank. |
|createdBy|[identitySet](../resources/identityset.md)|The user who created the legal hold. |
|createdDateTime|DateTimeOffset|The date and time the legal hold was created. |
|description|String| The legal hold description. |
|displayName|String| The display name of the legal hold. |
|errors|String collection|Lists any errors that happened while placing the hold. |
|id|String|The ID for the eDiscovery case. Read-only. Inherited from [entity](../resources/entity.md). |
|isEnabled|Boolean|Indicates whether the hold is enabled and actively holding content. |
|lastModifiedBy|[identitySet](../resources/identityset.md)|the user who last modified the legal hold.|
|lastModifiedDateTime|DateTimeOffset|The date and time the legal hold was last modified. |
|status|legalHoldStatus|The status of the legal hold. Possible values are: `Pending`, `Error`, `Success`, `UnknownFutureValue`.|

### legalHoldStatus values

|Member|Description|
|:---|-----------|
|Pending| The hold distribution process is in progress. |
|Error| There was an error when the hold was applied, See legalHold errors for more detailed information. |
|Success| The hold was successfully applied and is holding the specified content. |

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|siteSources|[siteSource](../resources/ediscovery-sitesource.md) collection|Data source entity for SharePoint sites associated with the legal hold. |
|userSources|[userSource](../resources/ediscovery-usersource.md) collection| Data source entity for a the legal hold. This is the container for a mailbox and OneDrive for Business site.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.legalhold",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.legalhold",
  "id": "String (identifier)",
  "description": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "isEnabled": "Boolean",
  "status": "String",
  "contentQuery": "String",
  "errors": [
    "String"
  ],
  "displayName": "String",
  "createdDateTime": "String (timestamp)"
}
```
