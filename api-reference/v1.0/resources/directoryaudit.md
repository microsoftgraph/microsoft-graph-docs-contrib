---
title: "directoryAudit resource type"
description: "Represents the directory audit items and its collection."
author: "egreenberg14"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# directoryAudit resource type

Namespace: microsoft.graph

Represents the directory audit items and its collection.

## Methods

| Method           | Return Type    |Description|
|:---------------|:--------|:----------|
|[List](../api/directoryaudit-list.md) | [directoryAudit](directoryaudit.md) |List the directory audit items in the collection and their properties.|
|[Get](../api/directoryaudit-get.md) | [directoryAudit](directoryaudit.md) |Get a specific directory audit item and its properties.|

## Properties

| Property            | Type                                                | Description                                                                                                                                                                                                                                                                        |
|:--------------------|:----------------------------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| activityDateTime    | DateTimeOffset                                      | Indicates the date and time the activity was performed. The Timestamp type is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Supports `$filter` (`eq`, `ge`, `le`) and `$orderby`.                                                                                          |
| activityDisplayName | String                                              | Indicates the activity name or the operation name (examples: "Create User" and "Add member to group"). For a list of activities logged, refer to [Microsoft Entra audit log categories and activities](/azure/active-directory/reports-monitoring/reference-audit-activities). Supports `$filter` (`eq`, `startswith`). |
| additionalDetails   | [keyValue](keyvalue.md) collection                  | Indicates additional details on the activity.                                                                                                                                                                                                                                      |
| category            | String                                              | Indicates which resource category that's targeted by the activity. For example: `UserManagement`, `GroupManagement`, `ApplicationManagement`, `RoleManagement`. For a list of categories for activities logged, refer to [Microsoft Entra audit log categories and activities](/azure/active-directory/reports-monitoring/reference-audit-activities).                                                                                                                                                          |
| correlationId       | Guid                                                | Indicates a unique ID that helps correlate activities that span across various services. Can be used to trace logs across services. Supports `$filter` (`eq`).                                                                                                                                                |
| id                  | String                                              | Indicates the unique ID for the activity. This is a GUID. Supports `$filter` (`eq`).                                                                                                                                                                                                                          |
| initiatedBy         | [auditActivityInitiator](auditactivityinitiator.md) | Indicates information about the user or app initiated the activity. Supports `$filter` (`eq`) for **user**/**id**, **user**/**displayName**, **user**/**userPrincipalName**, **app**/**appId**, **app**/**displayName**; and `$filter` (`startswith`) for **user**/**userPrincipalName**.                                                                                                                                                                                                               |
| loggedByService     | String                                              | Indicates information on which service initiated the activity (For example: `Self-service Password Management`, `Core Directory`, `B2C`, `Invited Users`, `Microsoft Identity Manager`, `Privileged Identity Management`. Supports `$filter` (`eq`).                                                                      |
| operationType       | String                                              | Indicates the type of operation that was performed. The possible values include but are not limited to the following: `Add`, `Assign`, `Update`, `Unassign`, and `Delete`.                                                                                   |
| result              | operationResult                                              | Indicates the result of the activity. Possible values are: `success`, `failure`, `timeout`, `unknownFutureValue`.                                                                                                                                                                   |
| resultReason        | String                                              | Indicates the reason for failure if the **result** is `failure` or `timeout`.                                                                                                                                                                                                                                 |
| targetResources     | [targetResource](targetresource.md) collection      | Indicates information on which resource was changed due to the activity. Target Resource Type can be `User`, `Device`, `Directory`, `App`, `Role`, `Group`, `Policy` or `Other`. Supports `$filter` (`eq`) for **id** and **displayName**; and `$filter` (`startswith`) for **displayName**.                                                                                                                  |

## Relationships

None

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.directoryAudit"
}-->

```json
{
  "activityDateTime": "String (timestamp)",
  "activityDisplayName": "String",
  "additionalDetails": [{"@odata.type": "microsoft.graph.keyValue"}],
  "category": "String",
  "correlationId": "Guid",
  "id": "String (identifier)",
  "initiatedBy": {"@odata.type": "microsoft.graph.auditActivityInitiator"},
  "loggedByService": "String",
  "operationType": "String",
  "result": "String",
  "resultReason": "String",
  "targetResources": [{"@odata.type": "microsoft.graph.targetResource"}]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "directoryAudit resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
