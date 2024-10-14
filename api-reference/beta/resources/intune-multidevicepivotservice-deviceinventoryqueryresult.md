---
title: "deviceInventoryQueryResult resource type"
description: "Represents the result of trying to run a KQL-style query that was submitted from Intune Pivot Multi-Device."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
---

# deviceInventoryQueryResult resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents the result of trying to run a KQL-style query that was submitted from Intune Pivot Multi-Device.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|startRow|Int64|The index of the first row in this DeviceInventoryQueryResult object.|
|rowCount|Int64|The number of rows in this DeviceInventoryQueryResult object.|
|totalRowCount|Int64|The total number of rows in the result of an Intune Pivot Multi-Device query.|
|status|[deviceInventoryQueryRequestStatus](../resources/intune-multidevicepivotservice-deviceinventoryqueryrequeststatus.md)|An enum indicating the current status of an Intune Pivot Multi-Device query request. Possible values are: created, submitted, inProgress, completed, timeout. Supports: $select. Read-only. Possible values are: `created`, `submitted`, `inProgress`, `timedOut`, `failed`, `completed`, `unknownFutureValue`.|
|columns|[deviceInventoryAttribute](../resources/intune-multidevicepivotservice-deviceinventoryattribute.md) collection|The columns in the result table of an Intune Pivot Multi-Device query, including the KQL-version of the column's name, localized column name, and column type.|
|rows|String collection|The rows in the result table of an Intune Pivot Multi-Device query, represented as a collection of JSON strings. Each JSON string represents one row and is an array containing strings for each value in that row. The length of each array is equal to the number of columns.|
|message|String|The message of an Intune Pivot Multi-Device query request, which provides more details on the status. For example, Query is malformed. when the query text doesn't pass validations.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceInventoryQueryResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceInventoryQueryResult",
  "startRow": 1024,
  "rowCount": 1024,
  "totalRowCount": 1024,
  "status": "String",
  "columns": [
    {
      "@odata.type": "microsoft.graph.deviceInventoryAttribute",
      "systemDisplayName": "String",
      "displayName": "String",
      "attributeType": "String"
    }
  ],
  "rows": [
    "String"
  ],
  "message": "String"
}
```
