---
title: "printJob resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# printJob resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List printJobs](../api/printjob-list.md)|[printJob](../resources/printjob.md) collection|Get a list of the [printJob](../resources/printjob.md) objects and their properties.|
|[Create printJob](../api/printjob-create.md)|[printJob](../resources/printjob.md)|Create a new [printJob](../resources/printjob.md) object.|
|[Get printJob](../api/printjob-get.md)|[printJob](../resources/printjob.md)|Read the properties and relationships of a [printJob](../resources/printjob.md) object.|
|[Update printJob](../api/printjob-update.md)|[printJob](../resources/printjob.md)|Update the properties of a [printJob](../resources/printjob.md) object.|
|[Delete printJob](../api/printjob-delete.md)|None|Deletes a [printJob](../resources/printjob.md) object.|
|[cancel](../api/printjob-cancel.md)|None|**TODO: Add Description**|
|[abort](../api/printjob-abort.md)|None|**TODO: Add Description**|
|[start](../api/printjob-start.md)|[printJobStatus](../resources/printjobstatus.md)|**TODO: Add Description**|
|[redirect](../api/printjob-redirect.md)|[printJob](../resources/printjob.md)|**TODO: Add Description**|
|[List documents](../api/printjob-list-documents.md)|[printDocument](../resources/printdocument.md) collection|Get the printDocument resources from the documents navigation property.|
|[Create printDocument](../api/printjob-post-documents.md)|[printDocument](../resources/printdocument.md)|Create a new printDocument object.|
|[List tasks](../api/printjob-list-tasks.md)|[printTask](../resources/printtask.md) collection|Get the printTask resources from the tasks navigation property.|
|[Add printTask](../api/printjob-post-tasks.md)|[printTask](../resources/printtask.md)|Add tasks by posting to the tasks collection.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|configuration|[printJobConfiguration](../resources/printjobconfiguration.md)|**TODO: Add Description**|
|createdBy|[userIdentity](../resources/useridentity.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|isFetchable|Boolean|**TODO: Add Description**|
|redirectedFrom|String|**TODO: Add Description**|
|redirectedTo|String|**TODO: Add Description**|
|status|[printJobStatus](../resources/printjobstatus.md)|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|documents|[printDocument](../resources/printdocument.md) collection|**TODO: Add Description**|
|tasks|[printTask](../resources/printtask.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.printJob",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printJob",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "status": {
    "@odata.type": "microsoft.graph.printJobStatus"
  },
  "createdBy": {
    "@odata.type": "microsoft.graph.userIdentity"
  },
  "configuration": {
    "@odata.type": "microsoft.graph.printJobConfiguration"
  },
  "redirectedTo": "String",
  "redirectedFrom": "String",
  "isFetchable": "Boolean"
}
```

