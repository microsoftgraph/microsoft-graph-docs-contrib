---
title: "cloudPCUserSettingsPersistenceProfile resource type"
description: "Describes the cloud profile details for specific Cloud PC user settings persistence under Cloud PC's policy assignment."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 10/20/2025
---

# cloudPCUserSettingsPersistenceProfile  resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the cloud profile details for specific Cloud PC user settings persistence under Cloud PC's policy assignment.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|profileId|String|Indicates the unique identifier of the Cloud PC user settings persistence profile for the selected Cloud PC user settings persistence. Required. Read-only.|
|userPrincipalName|String| The user principal name of the owner of the cloud profile. For example, the sample user principal name is `connie@contoso.com`. Required. Read-only.  |
|profileSizeInGB|Int32| Indicates the maximum allowed size in gigabytes of the cloud profile for a specific user. For example, 10 GB of allocated size returns `10` as a response. Required. Read-only.  |
|lastProfileAttachedDateTime|DateTimeOffset| The last time the user settings persistence profile attaches to the Cloud PC. For example, midnight UTC on Jan 1, 2025 looks like this: '2025-01-01T00:00:00Z'. Read-only. |
|status|[cloudPCUserSettingsPersistenceProfileStatus](#cloudPCUserSettingsPersistenceProfileStatus-values)| The status of this cloud profile. Possible values: `connected`, `notConnected`, `deleting`. Default: `notConnected`. Required. Read-only.  |

### cloudPCUserSettingsPersistenceProfileStatus values

| Member             | Description                                                                                                                  |
|:-------------------|:-----------------------------------------------------------------------------------------------------------------------------|
| connected        | Indicates the user connects to the user settings persistence profile.              |
| notConnected  | Indicates the user doesn't connect to the user settings persistence profile. |
| deleting  | Indicates that the user's cloud profile is in the process of being deleted due to automatic clean-up or manual deletion by an IT admin. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |     

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "profileId",
  "@odata.type": "microsoft.graph.cloudpcusersettingspersistenceprofile",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudpcusersettingspersistenceprofile",
  "profileId": "String (identifier)",
  "userPrincipalName": "String",
  "profileSizeInGB": "Int32",
  "lastProfileAttachedDateTime": "String (timestamp)",
  "status": { "microsoft.graph.cloudPCUserSettingsPersistenceProfileStatus"}
}
```
