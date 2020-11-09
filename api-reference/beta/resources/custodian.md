---
title: "custodian resource type"
description: "eDiscovery custodians are a user and all of their digital assets such as email and documents"
author: "mahage-msft"
localization_priority: Normal
ms.prod: "compliance"
doc_type: resourcePageType
---

# custodian resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

eDiscovery custodians are a user and all of their digital assets such as email and documents

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List custodians](../api/custodian-list.md)|[custodian](../resources/custodian.md) collection|Get a list of the [custodian](../resources/custodian.md) objects and their properties.|
|[Create custodian](../api/custodian-post.md)|[custodian](../resources/custodian.md)|Create a new [custodian](../resources/custodian.md) object.|
|[Get custodian](../api/custodian-get.md)|[custodian](../resources/custodian.md)|Read the properties and relationships of a [custodian](../resources/custodian.md) object.|
|[Update custodian](../api/custodian-update.md)|[custodian](../resources/custodian.md)|Update the properties of a [custodian](../resources/custodian.md) object.|
|[Delete custodian](../api/custodian-delete.md)|None|Deletes a [custodian](../resources/custodian.md) object.|
|[release](../api/custodian-release.md)|None|[Release a custodian from a case](https://docs.microsoft.com/microsoft-365/compliance/manage-new-custodians#release-a-custodian-from-a-case)|
|[activate](../api/custodian-activate.md)|None|If a custodian has been released from a case, use activate to [re-activate the custodian](https://docs.microsoft.com/microsoft-365/compliance/manage-new-custodians#re-activate-custodian) and make them part of the case again.|
|[List siteSources](../api/sitesource-list.md)|[siteSource](../resources/sitesource.md) collection|Get the siteSource resources from the siteSources navigation property.|
|[Create siteSources](../api/sitesource-post.md)|[siteSource](../resources/sitesource.md)|Create a new siteSource object.|
|[List unifiedGroupSources](../api/unifiedgroupsource-list.md)|[unifiedGroupSource](../resources/unifiedgroupsource.md) collection|Get the unifiedGroupSource resources from the unifiedGroupSources navigation property.|
|[Create unifiedGroupSources](../api/unifiedgroupsource-post.md)|[unifiedGroupSource](../resources/unifiedgroupsource.md)|Create a new unifiedGroupSource object.|
|[List userSources](../api/usersource-list.md)|[userSource](../resources/usersource.md) collection|Get the userSource resources from the userSources navigation property.|
|[Create userSources](../api/usersource-post.md)|[userSource](../resources/usersource.md)|Create a new userSource object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|acknowledgedDateTime|DateTimeOffset|Date and time the custodian [acknowledged a hold notification](https://docs.microsoft.com/microsoft-365/compliance/acknowledge-hold-notification)|
|applyHoldToSources|Boolean|Identifies whether a custodians sources were placed on hold during creation - see [Place custodians on hold](https://docs.microsoft.com/microsoft-365/compliance/add-custodians-to-case#step-4-place-custodians-on-hold) to learn more.|
|createdDateTime|DateTimeOffset|Date and time when the custodian was added to the case.|
|displayName|String|Display name of the custodian.|
|email|String|Email address of the custodian.|
|id|String|The ID for the custodian in the specified case. Read-only.|
|lastModifiedDateTime|DateTimeOffset|Date and time the custodian object was last modified|
|releasedDateTime|DateTimeOffset|Date and time the [custodian was released](https://docs.microsoft.com/microsoft-365/compliance/manage-new-custodians#release-a-custodian-from-a-case) from the case.|
|status|custodianStatus|Status of the custodian. Possible values are: `active`, `released`.|

### custodianStatus values

Status of the custodian in the case.  To learn more about custodian management, see [Work with custodians and non-custodial data sources in Advanced eDiscovery](https://docs.microsoft.com/microsoft-365/compliance/managing-custodians)

|Member|Description|
|:----|-----------|
|active|Custodian is an active part of the case - see [Manage custodians in an Advanced eDiscovery case](https://docs.microsoft.com/microsoft-365/compliance/manage-new-custodians)|
|released|Custodian is released from the case - see [Manage custodians in an Advanced eDiscovery case](https://docs.microsoft.com/microsoft-365/compliance/manage-new-custodians)|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|siteSources|[siteSource](../resources/sitesource.md) collection|Data source entity for SharePoint sites associated with the custodian.|
|unifiedGroupSources|[unifiedGroupSource](../resources/unifiedgroupsource.md) collection|Data source entity for Groups associated with the custodian.|
|userSources|[userSource](../resources/usersource.md) collection|Data source entity for a the custodian - This is the container for a custodian's mailbox and OneDrive for Business site|

<!--|lastIndexOperation|[caseIndexOperation](../resources/caseindexoperation.md)|**TODO: Add Description**| -->

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.custodian",
  "baseType": "",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.custodian",
  "email": "String",
  "applyHoldToSources": "Boolean",
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "releasedDateTime": "String (timestamp)",
  "acknowledgedDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "displayName": "String"
}
```
