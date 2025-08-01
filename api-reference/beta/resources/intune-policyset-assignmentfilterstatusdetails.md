---
title: "assignmentFilterStatusDetails resource type"
description: "Represent status details for device and payload and all associated applied filters."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# assignmentFilterStatusDetails resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represent status details for device and payload and all associated applied filters.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|managedDeviceId|String|Unique identifier for the device object.|
|payloadId|String|Unique identifier for payload object.|
|userId|String|Unique identifier for UserId object. Can be null|
|deviceProperties|[keyValuePair](../resources/intune-shared-keyvaluepair.md) collection|Device properties used for filter evaluation during device check-in time.|
|evalutionSummaries|[assignmentFilterEvaluationSummary](../resources/intune-policyset-assignmentfilterevaluationsummary.md) collection|Evaluation result summaries for each filter associated to device and payload|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.assignmentFilterStatusDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.assignmentFilterStatusDetails",
  "managedDeviceId": "String",
  "payloadId": "String",
  "userId": "String",
  "deviceProperties": [
    {
      "@odata.type": "microsoft.graph.keyValuePair",
      "name": "String",
      "value": "String"
    }
  ],
  "evalutionSummaries": [
    {
      "@odata.type": "microsoft.graph.assignmentFilterEvaluationSummary",
      "assignmentFilterId": "String",
      "assignmentFilterLastModifiedDateTime": "String (timestamp)",
      "assignmentFilterDisplayName": "String",
      "assignmentFilterPlatform": "String",
      "evaluationResult": "String",
      "evaluationDateTime": "String (timestamp)",
      "assignmentFilterType": "String",
      "assignmentFilterTypeAndEvaluationResults": [
        {
          "@odata.type": "microsoft.graph.assignmentFilterTypeAndEvaluationResult",
          "assignmentFilterType": "String",
          "evaluationResult": "String"
        }
      ]
    }
  ]
}
```