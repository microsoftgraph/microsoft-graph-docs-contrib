---
title: "goalsExportJob resource type"
description: "Represents an entity that holds the properties of an exportJob for Viva Goals."
author: "ishatyagiit"
ms.localizationpriority: medium
ms.prod: "employee-goals"
doc_type: resourcePageType
---

# goalsExportJob resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the export job for programmatically downloading a specified Viva Goals Explorer view. To learn more about Explorer views, see [Explorer](/viva/goals/explorer).

Inherits from [longRunningOperation](../resources/longrunningoperation.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List goalsExportJobs](../api/goals-list-exportjobs.md)|[goalsExportJob](../resources/goalsexportjob.md) collection|Get a list of **goalsExportJob** objects and their properties.|
|[Create goalsExportJob](../api/goals-post-exportjobs.md)|[goalsExportJob](../resources/goalsexportjob.md)|Create a new **goalsExportJob** object.|
|[Get goalsExportJob](../api/goalsexportjob-get.md)|[goalsExportJob](../resources/goalsexportjob.md)|Read the properties and relationships of a **goalsExportJob** object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|content|Stream|The content of the **goalsExportJob**.|
|createdDateTime|DateTimeOffset|The start time of the operation. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014, is `2014-01-01T00:00:00Z`. Inherited from [longRunningOperation](../resources/longrunningoperation.md).|
|expirationDateTime|DateTimeOffset|The date and time of expiry of the result of the operation.|
|explorerViewId|String|The unique identifier of the explorer view to be exported.|
|goalsOrganizationId|String|The unique identifier of the [viva goals organization](/viva/goals/understand-orgs-and-teams#organizations-in-viva-goals).|
|id|String|The unique identifier for the operation. Inherited from [longRunningOperation](../resources/longrunningoperation.md).|
|resourceLocation|String|The URI of the resource on which the operation is performed. Inherited from [longRunningOperation](../resources/longrunningoperation.md).|
|status|longRunningOperationStatus|The status of the operation. Inherited from [longRunningOperation](../resources/longrunningoperation.md). The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

