---
title: "managedDeviceResourceQueryResult resource type"
description: "The ManagedDeviceResourceQueryResult complex type represents the result of trying to run a KQL-style query that was submitted from Intune Resource Graph."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# managedDeviceResourceQueryResult resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The ManagedDeviceResourceQueryResult complex type represents the result of trying to run a KQL-style query that was submitted from Intune Resource Graph.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|count|Int64|The total number of rows in the entire result of an Intune Resource Graph query.|
|queryRequestStatus|[managedDeviceResourceQueryStatus](../resources/intune-multidevicepivotservice-manageddeviceresourcequerystatus.md)|Indicates the current status of an Intune Resource Graph request. Possible values are: created (default), submitted, inProgress, timedOut, failed, and completed. Possible values are: `created`, `submitted`, `inProgress`, `timedOut`, `failed`, `completed`, `unknownFutureValue`.|
|columns|[managedDeviceResourceQueryAttribute](../resources/intune-multidevicepivotservice-manageddeviceresourcequeryattribute.md) collection|The columns in the result table of an Intune Resource Graph, including the KQL-version of the column's name and column type. This is provided when fetching the first page of results.|
|rows|String collection|The rows in the result table represented as a collection of JSON strings. Each JSON string represents one row and is an array containing strings or JSON objects for each value in that row. The length of each array is equal to the number of columns.|
|message|String|The message associated with Intune Resource Graph request, which provides more details on the status. For example, Query is malformed., Query processing is scheduled for execution. or Query processing is completed.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.managedDeviceResourceQueryResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedDeviceResourceQueryResult",
  "count": 1024,
  "queryRequestStatus": "String",
  "columns": [
    {
      "@odata.type": "microsoft.graph.managedDeviceResourceQueryAttribute",
      "resourceId": "String",
      "attributeId": "String",
      "attributeDisplayName": "String",
      "attributeType": "String",
      "possibleValues": [
        {
          "@odata.type": "microsoft.graph.managedDeviceResourceQueryEnumMember",
          "enumMemberDisplayName": "String",
          "value": "String",
          "iconName": "String"
        }
      ]
    }
  ],
  "rows": [
    "String"
  ],
  "message": "String"
}
```
