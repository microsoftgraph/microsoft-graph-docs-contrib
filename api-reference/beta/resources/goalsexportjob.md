---
title: "goalsExportJob resource type"
description: "Represents an entity that holds the properties of an exportJob for Viva Goals."
author: "ishatyagiit"
ms.localizationpriority: medium
ms.prod: "microsoft-viva-goals"
doc_type: resourcePageType
---

# goalsExportJob resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The exportJob entity represents the properties of an exportJob in Viva Goals.


Inherits from [longRunningOperation](../resources/longrunningoperation.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List goalsExportJobs](../api/goals-list-exportjobs.md)|[goalsExportJob](../resources/goalsexportjob.md) collection|Get a list of the [goalsExportJob](../resources/goalsexportjob.md) objects and their properties.|
|[Create goalsExportJob](../api/goals-post-exportjobs.md)|[goalsExportJob](../resources/goalsexportjob.md)|Create a new [goalsExportJob](../resources/goalsexportjob.md) object.|
|[Get goalsExportJob](../api/goalsexportjob-get.md)|[goalsExportJob](../resources/goalsexportjob.md)|Read the properties and relationships of a [goalsExportJob](../resources/goalsexportjob.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|content|Stream|The content of the goalsExportJob.|
|createdDateTime|DateTimeOffset|The start time of the operation. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [longRunningOperation](../resources/longrunningoperation.md).|
|expirationDateTime|DateTimeOffset|Date and time of expiry of the result of the operation.|
|explorerViewId|String|The unique identifier of the explorer view to be exported.|
|goalsOrganizationId|String|The unique identifier of the goals organization.|
|id|String|The unique identifier for the operation. Inherited from [longRunningOperation](../resources/longrunningoperation.md).|
|resourceLocation|String|URI of the resource that the operation is performed on. Inherited from [longRunningOperation](../resources/longrunningoperation.md).|
|status|longRunningOperationStatus|The status of the operation. Inherited from [longRunningOperation](../resources/longrunningoperation.md). The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.goalsExportJob",
  "baseType": "microsoft.graph.longRunningOperation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.goalsExportJob",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "status": "String",
  "resourceLocation": "String",
  "goalsOrganizationId": "String",
  "explorerViewId": "String",
  "expirationDateTime": "String (timestamp)",
  "content": "Stream"
}
```

