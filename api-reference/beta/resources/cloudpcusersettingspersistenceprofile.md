---
title: "cloudPCUserSettingsPersistenceProfile resource type"
description: "Represents the cloud profile details for specific Cloud PC user settings persistence under the Cloud PC policy assignment."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 10/20/2025
---

# cloudPCUserSettingsPersistenceProfile  resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the cloud profile details for specific Cloud PC user settings persistence under the Cloud PC policy assignment.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|lastProfileAttachedDateTime|DateTimeOffset| The last time the user settings persistence profile was attached to the Cloud PC. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. |
|profileId|String|Indicates the unique identifier of the Cloud PC user settings persistence profile for the selected Cloud PC user settings persistence. Required. Read-only.|
|profileSizeInGB|Int32| Indicates the maximum allowed size in gigabytes of the cloud profile for a specific user. For example, 10 GB of allocated size returns `10` as a response. Required. Read-only.  |
|status|[cloudPCUserSettingsPersistenceProfileStatus](#cloudpcusersettingspersistenceprofilestatus-values)| The status of this cloud profile. The possible values are: `connected`, `notConnected`, `deleting`, `unknownFutureValue`. The default value is `notConnected`. Required. Read-only. |
|userPrincipalName|String| The user principal name of the owner of the cloud profile. For example, `connie@contoso.com`. Required. Read-only.  |

### cloudPCUserSettingsPersistenceProfileStatus values

| Member             | Description                                                                                                                  |
|:-------------------|:-----------------------------------------------------------------------------------------------------------------------------|
| connected        | Indicates that the user connects to the user settings persistence profile.              |
| notConnected  | Indicates that the user doesn't connect to the user settings persistence profile. |
| deleting  | Indicates that the user's user settings persistence profile is in the process of deletion due to automatic clean-up or manual deletion by an IT admin. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |     

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
  "lastProfileAttachedDateTime": "String (timestamp)",
  "profileId": "String (identifier)",
  "profileSizeInGB": "Int32",
  "status": "String",
  "userPrincipalName": "String"
}
```
