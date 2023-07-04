---
title: "workbookDocumentTask resource type"
description: "represent a document task in Excel"
author: "VictorZheng-qizheng"
ms.localizationpriority: medium
ms.prod: "excel"
doc_type: resourcePageType
---

# workbookDocumentTask resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a document task associated with a comment


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List changes](../api/workbookdocumenttask-list-changes.md)|[workbookDocumentTaskChange](workbookdocumenttaskchange.md) collection|Get the workbookDocumentTaskChange resources from the changes navigation property.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignees|[workbookEmailIdentity](workbookemailidentity.md) collection| A collection of user identity the task is assigned to|
|completedBy|[workbookEmailIdentity](workbookemailidentity.md)|A user identity that completes the task|
|completedDateTime|DateTimeOffset|Timestamp of the task completion|
|createdBy|[workbookEmailIdentity](workbookemailidentity.md)|A useridentity that creates the task|
|createdDateTime|DateTimeOffset|Timestamp of the task creation|
|id|String|Task identifier|
|percentComplete|Int32|Percentage of the completion of the task|
|priority|Int32|Priority of the task|
|startAndDueDateTime|[workbookDocumentTaskSchedule](workbookdocumenttaskschedule.md)|Start and due date of the task|
|title|String| title of the task|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|changes|[workbookDocumentTaskChange](workbookdocumenttaskchange.md) collection|A collection of task change histories|
|comment|[workbookComment](workbookcomment.md)|The comment that the task is associated with|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.workbookDocumentTask",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.workbookDocumentTask",
  "id": "String (identifier)",
  "assignees": [
    {
      "@odata.type": "microsoft.graph.workbookEmailIdentity"
    }
  ],
  "completedBy": {
    "@odata.type": "microsoft.graph.workbookEmailIdentity"
  },
  "completedDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.workbookEmailIdentity"
  },
  "createdDateTime": "String (timestamp)",
  "percentComplete": "Integer",
  "priority": "Integer",
  "startAndDueDateTime": {
    "@odata.type": "microsoft.graph.workbookDocumentTaskSchedule"
  },
  "title": "String"
}
```

