---
title: "cloudPCUserSettingsPersistenceProfile resource type"
description: "Describes the cloud profile detail for specific Cloud PC user settings persistence under Cloud PC's policy assignment."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 10/20/2025
---

# cloudPCUserSettingsPersistenceProfile  resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the cloud profile detail for specific Cloud PC user settings persistence under Cloud PC's policy assignment.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|profileId|String|Indicates unique identifier of the Cloud PC user settings persistence specific profile for selected Cloud PC user settings persistence. Required. Read-Only.|
|userPrincipalName|String| The user principal name who owns the cloud profile. For example, the sample user principal name is `connie@contoso.com`. Required. Read-Only.  |
|profileSizeInGB|Int32| Indicates the max allowed size in gigabytes of the cloud profile for a specific user. For example, 10 GB allocated size will return `10` as a response. Required. Read-Only.  |
|lastProfileAttachedDateTime|DateTimeOffset| The last time the user settings persistence profile attached onto the Cloud PC. For example, midnight UTC on Jan 1, 2025 would look like this: '2025-01-01T00:00:00Z'. Read-Only. |
|status|[cloudPCUserSettingsPersistenceProfileStatus]| The status of this cloud profile. Possible values: `connected`, `notConnected`, `deleting`. Default: `notConnected`. Required. Read-Only.  |

### cloudPCUserSettingsPersistenceProfileStatus values

| Member             | Description                                                                                                                  |
|:-------------------|:-----------------------------------------------------------------------------------------------------------------------------|
| connected        | Indicates the user has connected to user setting persistence profile.              |
| notConnected  | Indicates the user has not connected user setting persistence profile. |
| deleting  | Indicates that the user's cloud profile is in the process of being deleted due to automatic clean-up or manual deletion by an IT admin. |
| unknownFutureValue | Evolvable enumeration sentinel value. Do not use. |     

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "profileId",
  "@odata.type": "microsoft.graph.cloudPCUserSettingsPersistenceProfile",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPCUserSettingsPersistenceProfile",
  "profileId": "String (identifier)",
  "userPrincipalName": "String",
  "profileSizeInGB": "Int32",
  "lastProfileAttachedDateTime": "String (timestamp)",
  "status": {"@odata.type": "microsoft.graph.cloudPCUserSettingsPersistenceProfileStatus"}
}
```
