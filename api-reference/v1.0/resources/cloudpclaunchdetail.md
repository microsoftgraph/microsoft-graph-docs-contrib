---
title: "cloudPcLaunchDetail resource type"
description: "Contains the details to connect a Cloud PC."
author: "sentry-cy"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 11/25/2025
---

# cloudPcLaunchDetail resource type

Namespace: microsoft.graph

Contains the details to connect a [Cloud PC](../resources/cloudpc.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|cloudPcId|String|The unique identifier of the Cloud PC.|
|cloudPcLaunchUrl|String|The connect URL of the Cloud PC.|
|windows365SwitchCompatibilityFailureReasonType|[windows365SwitchCompatibilityFailureReasonType](../resources/cloudpclaunchdetail.md#windows365switchcompatibilityfailurereasontype-values)|Indicates the reason the Cloud PC isn't compatible with Windows 365 Switch. Possible values are: `osVersionNotSupported`, `hardwareNotSupported`, `unknownFutureValue`. `osVersionNotSupported` indicates that the user needs to update their Cloud PC operating system version. `hardwareNotSupported` indicates that the Cloud PC needs more CPUs or RAM to support the functionality.|
|windows365SwitchCompatible|Boolean|Indicates whether the Cloud PC supports switch functionality. If the value is `true`, it supports switch functionality; otherwise, `false`.|

### windows365SwitchCompatibilityFailureReasonType values

Defines the reason for switch compatibility failure on a Cloud PC.

| Member|Description|
|:---|:---|
|osVersionNotSupported|Default. Indicates that the Cloud PC operating system version doesn't meet the requirements to use Windows 365 Switch.|
|hardwareNotSupported|Indicates that the Cloud PC hardware doesn't meet the requirements to use Windows 365 Switch.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcLaunchDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcLaunchDetail",
  "cloudPcId": "String",
  "cloudPcLaunchUrl": "String",
  "windows365SwitchCompatibilityFailureReasonType": "String",
  "windows365SwitchCompatible": "Boolean"
}
```

