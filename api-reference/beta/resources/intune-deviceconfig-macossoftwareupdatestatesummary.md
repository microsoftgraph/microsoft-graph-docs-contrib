---
title: "macOSSoftwareUpdateStateSummary resource type"
description: "MacOS software update state summary for a device and user"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# macOSSoftwareUpdateStateSummary resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

MacOS software update state summary for a device and user

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List macOSSoftwareUpdateStateSummaries](../api/intune-deviceconfig-macossoftwareupdatestatesummary-list.md)|[macOSSoftwareUpdateStateSummary](../resources/intune-deviceconfig-macossoftwareupdatestatesummary.md) collection|List properties and relationships of the [macOSSoftwareUpdateStateSummary](../resources/intune-deviceconfig-macossoftwareupdatestatesummary.md) objects.|
|[Get macOSSoftwareUpdateStateSummary](../api/intune-deviceconfig-macossoftwareupdatestatesummary-get.md)|[macOSSoftwareUpdateStateSummary](../resources/intune-deviceconfig-macossoftwareupdatestatesummary.md)|Read properties and relationships of the [macOSSoftwareUpdateStateSummary](../resources/intune-deviceconfig-macossoftwareupdatestatesummary.md) object.|
|[Create macOSSoftwareUpdateStateSummary](../api/intune-deviceconfig-macossoftwareupdatestatesummary-create.md)|[macOSSoftwareUpdateStateSummary](../resources/intune-deviceconfig-macossoftwareupdatestatesummary.md)|Create a new [macOSSoftwareUpdateStateSummary](../resources/intune-deviceconfig-macossoftwareupdatestatesummary.md) object.|
|[Delete macOSSoftwareUpdateStateSummary](../api/intune-deviceconfig-macossoftwareupdatestatesummary-delete.md)|None|Deletes a [macOSSoftwareUpdateStateSummary](../resources/intune-deviceconfig-macossoftwareupdatestatesummary.md).|
|[Update macOSSoftwareUpdateStateSummary](../api/intune-deviceconfig-macossoftwareupdatestatesummary-update.md)|[macOSSoftwareUpdateStateSummary](../resources/intune-deviceconfig-macossoftwareupdatestatesummary.md)|Update the properties of a [macOSSoftwareUpdateStateSummary](../resources/intune-deviceconfig-macossoftwareupdatestatesummary.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|displayName|String|Human readable name of the software update|
|productKey|String|Product key of the software update.|
|updateCategory|[macOSSoftwareUpdateCategory](../resources/intune-deviceconfig-macossoftwareupdatecategory.md)|Software update category. Possible values are: `critical`, `configurationDataFile`, `firmware`, `other`.|
|updateVersion|String|Version of the software update|
|state|[macOSSoftwareUpdateState](../resources/intune-deviceconfig-macossoftwareupdatestate.md)|State of the software update. Possible values are: `success`, `downloading`, `downloaded`, `installing`, `idle`, `available`, `scheduled`, `downloadFailed`, `downloadInsufficientSpace`, `downloadInsufficientPower`, `downloadInsufficientNetwork`, `installInsufficientSpace`, `installInsufficientPower`, `installFailed`, `commandFailed`.|
|lastUpdatedDateTime|DateTimeOffset|Last date time the report for this device and product key was updated.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.macOSSoftwareUpdateStateSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.macOSSoftwareUpdateStateSummary",
  "id": "String (identifier)",
  "displayName": "String",
  "productKey": "String",
  "updateCategory": "String",
  "updateVersion": "String",
  "state": "String",
  "lastUpdatedDateTime": "String (timestamp)"
}
```