---
title: "configManagerCollection resource type"
description: "A ConfigManager defined collection of devices or users."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# configManagerCollection resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A ConfigManager defined collection of devices or users.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List configManagerCollections](../api/intune-partnerintegration-configmanagercollection-list.md)|[configManagerCollection](../resources/intune-partnerintegration-configmanagercollection.md) collection|List properties and relationships of the [configManagerCollection](../resources/intune-partnerintegration-configmanagercollection.md) objects.|
|[Get configManagerCollection](../api/intune-partnerintegration-configmanagercollection-get.md)|[configManagerCollection](../resources/intune-partnerintegration-configmanagercollection.md)|Read properties and relationships of the [configManagerCollection](../resources/intune-partnerintegration-configmanagercollection.md) object.|
|[Create configManagerCollection](../api/intune-partnerintegration-configmanagercollection-create.md)|[configManagerCollection](../resources/intune-partnerintegration-configmanagercollection.md)|Create a new [configManagerCollection](../resources/intune-partnerintegration-configmanagercollection.md) object.|
|[Delete configManagerCollection](../api/intune-partnerintegration-configmanagercollection-delete.md)|None|Deletes a [configManagerCollection](../resources/intune-partnerintegration-configmanagercollection.md).|
|[Update configManagerCollection](../api/intune-partnerintegration-configmanagercollection-update.md)|[configManagerCollection](../resources/intune-partnerintegration-configmanagercollection.md)|Update the properties of a [configManagerCollection](../resources/intune-partnerintegration-configmanagercollection.md) object.|
|[getPolicySummary function](../api/intune-partnerintegration-configmanagercollection-getpolicysummary.md)|[configManagerPolicySummary](../resources/intune-partnerintegration-configmanagerpolicysummary.md)||

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The key for the ConfigManager Collection.|
|displayName|String|The DisplayName.|
|collectionIdentifier|String|The collection identifier in SCCM.|
|hierarchyName|String|The HierarchyName.|
|hierarchyIdentifier|String|The Hierarchy Identifier.|
|createdDateTime|DateTimeOffset|The created date.|
|lastModifiedDateTime|DateTimeOffset|The last modified date.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.configManagerCollection"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.configManagerCollection",
  "id": "String (identifier)",
  "displayName": "String",
  "collectionIdentifier": "String",
  "hierarchyName": "String",
  "hierarchyIdentifier": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)"
}
```