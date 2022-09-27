---
title: "oemWarrantyInformationOnboarding resource type"
description: "Warranty status entity for a given OEM"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# oemWarrantyInformationOnboarding resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Warranty status entity for a given OEM

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List oemWarrantyInformationOnboardings](../api/intune-devices-oemwarrantyinformationonboarding-list.md)|[oemWarrantyInformationOnboarding](../resources/intune-devices-oemwarrantyinformationonboarding.md) collection|List properties and relationships of the [oemWarrantyInformationOnboarding](../resources/intune-devices-oemwarrantyinformationonboarding.md) objects.|
|[Get oemWarrantyInformationOnboarding](../api/intune-devices-oemwarrantyinformationonboarding-get.md)|[oemWarrantyInformationOnboarding](../resources/intune-devices-oemwarrantyinformationonboarding.md)|Read properties and relationships of the [oemWarrantyInformationOnboarding](../resources/intune-devices-oemwarrantyinformationonboarding.md) object.|
|[Create oemWarrantyInformationOnboarding](../api/intune-devices-oemwarrantyinformationonboarding-create.md)|[oemWarrantyInformationOnboarding](../resources/intune-devices-oemwarrantyinformationonboarding.md)|Create a new [oemWarrantyInformationOnboarding](../resources/intune-devices-oemwarrantyinformationonboarding.md) object.|
|[Delete oemWarrantyInformationOnboarding](../api/intune-devices-oemwarrantyinformationonboarding-delete.md)|None|Deletes a [oemWarrantyInformationOnboarding](../resources/intune-devices-oemwarrantyinformationonboarding.md).|
|[Update oemWarrantyInformationOnboarding](../api/intune-devices-oemwarrantyinformationonboarding-update.md)|[oemWarrantyInformationOnboarding](../resources/intune-devices-oemwarrantyinformationonboarding.md)|Update the properties of a [oemWarrantyInformationOnboarding](../resources/intune-devices-oemwarrantyinformationonboarding.md) object.|
|[enable action](../api/intune-devices-oemwarrantyinformationonboarding-enable.md)|None|Not yet documented|
|[disable action](../api/intune-devices-oemwarrantyinformationonboarding-disable.md)|None|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for OEM Warranty status. This property is read-only.|
|oemName|String|OEM name. This property is read-only.|
|enabled|Boolean|Specifies whether warranty query is enabled for given OEM. This property is read-only.|
|available|Boolean|Specifies whether warranty API is available. This property is read-only.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.oemWarrantyInformationOnboarding"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.oemWarrantyInformationOnboarding",
  "id": "String (identifier)",
  "oemName": "String",
  "enabled": true,
  "available": true
}
```






