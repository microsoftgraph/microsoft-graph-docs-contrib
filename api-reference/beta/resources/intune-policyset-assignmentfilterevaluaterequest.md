---
title: "assignmentFilterEvaluateRequest resource type"
description: "Request for assignment filter evaluation for devices."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# assignmentFilterEvaluateRequest resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Request for assignment filter evaluation for devices.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|platform|[devicePlatformType](../resources/intune-policyset-deviceplatformtype.md)|Platform type of the devices on which the Assignment Filter will be applicable. The possible values are: `android`, `androidForWork`, `iOS`, `macOS`, `windowsPhone81`, `windows81AndLater`, `windows10AndLater`, `androidWorkProfile`, `unknown`, `androidAOSP`, `androidMobileApplicationManagement`, `iOSMobileApplicationManagement`, `unknownFutureValue`, `windowsMobileApplicationManagement`.|
|rule|String|Rule definition of the Assignment Filter.|
|top|Int32|Limit of records per request. Default value is 100, if provided less than 0 or greater than 100|
|skip|Int32|Number of records to skip. Default value is 0|
|orderBy|String collection|Order the devices should be sorted in. Default is ascending on device name.|
|search|String|Search keyword applied to scope found devices.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.assignmentFilterEvaluateRequest"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.assignmentFilterEvaluateRequest",
  "platform": "String",
  "rule": "String",
  "top": 1024,
  "skip": 1024,
  "orderBy": [
    "String"
  ],
  "search": "String"
}
```