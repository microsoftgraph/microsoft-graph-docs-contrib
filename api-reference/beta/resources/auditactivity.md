---
title: "auditActivity resource type"
toc.title: "auditActivity resource type (preview)"
description: "Represents a standard audit log record capturing user or system activities."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# auditActivity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a standard audit log record capturing details about an event or operation performed by a user or system. Accessed via the `auditActivities` navigation property on [activitiesContainer](../resources/activitiescontainer.md).

## Properties

| Property            | Type                                                                                                 | Description                                                                                                                   |
| :------------------ | :--------------------------------------------------------------------------------------------------- | :---------------------------------------------------------------------------------------------------------------------------- |
| administrativeUnits | String collection                                                                                      | Administrative units associated with the user or activity.                                                                    |
| auditData           | Microsoft.M365.AuditCore.auditData                                                                   | Workload-specific data associated with the audit event. Structure defined by the `AuditData` complex type from the originating workload. |
| clientIp            | String                                                                                               | The IP address of the client from where the activity originated.                                                              |
| createdDateTime     | DateTimeOffset                                                                                       | The timestamp when the audit record was created.                                                                              |
| id                  | String                                                                                               | The unique identifier for the audit activity record. Read-only. Key property.                                                 |
| operation           | String                                                                                               | The specific operation or action that was performed (for example, "FileAccessed", "UserLoggedIn").                                 |
| organizationId      | String                                                                                               | The unique identifier (GUID) of the organization (tenant) where the activity occurred.                                        |
| recordType          | Microsoft.M365.AuditCore.auditLogRecordType                                                            | The type of the audit log record, indicating the schema version or category. Defined by the `AuditLogRecordType` enum from the originating workload. |
| userInfo            | [auditActivityUserInfo](../resources/auditactivityuserinfo.md)    | Information about the user or principal that performed the activity.                                                          |
| version             | Int32                                                                                                | The version number of the audit log schema used for this record.                                                              |
| workload            | String                                                                                               | The Microsoft 365 service or workload where the activity occurred (for example, "SharePoint", "Exchange", "MicrosoftEntra").      |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type. Note that the structure of `auditData` and the values for `recordType` depend on the specific workload generating the audit log.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.auditActivity",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.auditActivity",
  "id": "String (identifier)",
  "recordType": "Microsoft.M365.AuditCore.auditLogRecordType",
  "createdDateTime": "String (timestamp)",
  "operation": "String",
  "organizationId": "String",
  "userInfo": { "@odata.type": "microsoft.graph.auditActivityUserInfo" },
  "clientIp": "String",
  "workload": "String",
  "version": "Int32",
  "administrativeUnits": ["String"],
  "auditData": { "@odata.type": "Microsoft.M365.AuditCore.auditData" }
}
```
