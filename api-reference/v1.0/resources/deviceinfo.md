---
title: "deviceInfo resource type"
description: "Information about the device used for the sign-in as defined in the Conditional Access What If evaluation."
author: "kvenkit"
ms.date: 07/08/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# deviceInfo resource type

Namespace: microsoft.graph

Defines details of the device that is used for signing in, as defined in [Conditional Access What If evaluation](../api/conditionalaccessroot-evaluate.md). 


## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceId|String|Unique identifier set by Azure Device Registration Service at the time of registration.|
|displayName|String|The display name for the device.|
|enrollmentProfileName|String|Enrollment profile applied to the device.|
|extensionAttribute1|String|Extension attribute.|
|extensionAttribute10|String|Extension attribute.|
|extensionAttribute11|String|Extension attribute.|
|extensionAttribute12|String|Extension attribute.|
|extensionAttribute13|String|Extension attribute.|
|extensionAttribute14|String|Extension attribute.|
|extensionAttribute15|String|Extension attribute.|
|extensionAttribute2|String|Extension attribute.|
|extensionAttribute3|String|Extension attribute.|
|extensionAttribute4|String|Extension attribute.|
|extensionAttribute5|String|Extension attribute.|
|extensionAttribute6|String|Extension attribute.|
|extensionAttribute7|String|Extension attribute.|
|extensionAttribute8|String|Extension attribute.|
|extensionAttribute9|String|Extension attribute.|
|isCompliant|Boolean|Indicates the device compliance status with Mobile Management Device (MDM) policies. Default is `false`.|
|manufacturer|String|Manufacturer of the device.|
|mdmAppId|String|Application identifier used to register device into MDM.|
|model|String|Model of the device.|
|operatingSystem|String|The type of operating system on the device.|
|operatingSystemVersion|String|The version of the operating system on the device.|
|ownership|String|Ownership of the device. This property is set by Intune.|
|physicalIds|String collection|A collection of physical identifiers for the device. |
|profileType|String|The profile type of the device.|
|systemLabels|String collection|List of labels applied to the device by the system.|
|trustType|String|Type of trust for the joined device.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceInfo",
  "deviceId": "String",
  "ownership": "String",
  "displayName": "String",
  "enrollmentProfileName": "String",
  "isCompliant": "Boolean",
  "mdmAppId": "String",
  "operatingSystem": "String",
  "operatingSystemVersion": "String",
  "physicalIds": [
    "String"
  ],
  "profileType": "String",
  "systemLabels": [
    "String"
  ],
  "trustType": "String",
  "manufacturer": "String",
  "model": "String",
  "extensionAttribute1": "String",
  "extensionAttribute2": "String",
  "extensionAttribute3": "String",
  "extensionAttribute4": "String",
  "extensionAttribute5": "String",
  "extensionAttribute6": "String",
  "extensionAttribute7": "String",
  "extensionAttribute8": "String",
  "extensionAttribute9": "String",
  "extensionAttribute10": "String",
  "extensionAttribute11": "String",
  "extensionAttribute12": "String",
  "extensionAttribute13": "String",
  "extensionAttribute14": "String",
  "extensionAttribute15": "String"
}
```

