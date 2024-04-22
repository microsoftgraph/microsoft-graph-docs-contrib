---
title: "managedDeviceWindowsOperatingSystemEdition resource type"
description: "Different Windows' versions have Edition specific support timelines. This complex type defines the date until which a particular edition is supported in a Windows' version."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# managedDeviceWindowsOperatingSystemEdition resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Different Windows' versions have Edition specific support timelines. This complex type defines the date until which a particular edition is supported in a Windows' version.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|editionType|[managedDeviceWindowsOperatingSystemEditionType](../resources/intune-osprovisioninggraphservice-manageddevicewindowsoperatingsystemeditiontype.md)|Windows Operating System releases are available in multiple editions. This property defines the edition type of the Operating System. Possible values are: professional, professionalN, enterprise, enterpriseN, education, educationN, proEducation, proEducationN, proWorkstation, proWorkstationN. Read-only. Possible values are: `professional`, `professionalN`, `enterprise`, `enterpriseN`, `education`, `educationN`, `proEducation`, `proEducationN`, `proWorkstation`, `proWorkstationN`, `unknownFutureValue`.|
|supportEndDate|Date|Indicates the Date until which this Operating System edition type is officially supported. The Timestamp type represents date and time information using ISO 8601 format and is always in Pacific Time Zone (PT). For example, 2014-01-01 would mean '2014-01-01T07:00:00Z' in UTC time. Returned by default. Read-only.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.managedDeviceWindowsOperatingSystemEdition"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedDeviceWindowsOperatingSystemEdition",
  "editionType": "String",
  "supportEndDate": "String (Date)"
}
```