---
title: "assignmentFilterEvaluateRequest resource type"
description: "Request for assignment filter evaluation for devices."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# assignmentFilterEvaluateRequest resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Request for assignment filter evaluation for devices.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|platform|[devicePlatformType](../resources/intune-policyset-deviceplatformtype.md)|Platform type of the devices on which the Assignment Filter will be applicable. Possible values are: `android`, `androidForWork`, `iOS`, `macOS`, `windowsPhone81`, `windows81AndLater`, `windows10AndLater`, `androidWorkProfile`, `unknown`, `androidAOSP`.|
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
