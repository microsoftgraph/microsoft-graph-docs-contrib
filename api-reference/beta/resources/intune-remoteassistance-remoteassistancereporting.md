---
title: "remoteAssistanceReporting resource type"
description: "RemoteAssistanceReporting resources represents the metadata of a given Remote Assistance reporting payload"
author: "dougeby"
ms.localizationpriority: medium
ms.prod: "intune"
doc_type: resourcePageType
---

# remoteAssistanceReporting resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

RemoteAssistanceReporting resources represents the metadata of a given Remote Assistance reporting payload

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for a session and for each sessions's reporting payload|
|startDateTime|DateTimeOffset|Start time for the session|
|endDateTime|DateTimeOffset|End time for the session|
|remoteAssistanceSessionType|[remoteAssistanceSessionType](../resources/intune-remoteassistance-remoteassistancesessiontype.md)|Type of the remote assistance session that was held. Possible values are: `viewOnly`, `fullControl`, `elevation`. Possible values are: `viewOnly`, `fullControl`, `elevation`.|
|helperEmail|String|Login email used by the helper to establish the session|
|helperTenantId|String|Tenant id for the helper|
|helperFirstName|String|Helper's first name|
|helperLastName|String|Helper's last name|
|helperDeviceAadId|String|Helper's device AAD Id|
|helperDeviceName|String|Helper's device name|
|helperEnrollmentState|[enrollmentState](../resources/intune-shared-enrollmentstate.md)|Intune enrollment state of the helper's device. Possible values are: `unknown`, `enrolled`, `pendingReset`, `failed`, `notContacted`, `blocked`. Possible values are: `unknown`, `enrolled`, `pendingReset`, `failed`, `notContacted`, `blocked`.|
|sharerEmail|String|Login email used by the sharer to establish the session|
|sharerTenantId|String|Tenant id for the sharer|
|sharerFirstName|String|Sharer's first name|
|sharerLastName|String|Sharer's last name|
|sharerDeviceAadId|String|Sharer's device AAD Id|
|sharerDeviceName|String|Sharer's device name|
|sharerEnrollmentState|[enrollmentState](../resources/intune-shared-enrollmentstate.md)|Intune enrollment state of the sharer's device. Possible values are: `unknown`, `enrolled`, `pendingReset`, `failed`, `notContacted`, `blocked`. Possible values are: `unknown`, `enrolled`, `pendingReset`, `failed`, `notContacted`, `blocked`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.remoteAssistanceReporting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.remoteAssistanceReporting",
  "id": "String (identifier)",
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "remoteAssistanceSessionType": "String",
  "helperEmail": "String",
  "helperTenantId": "String",
  "helperFirstName": "String",
  "helperLastName": "String",
  "helperDeviceAadId": "String",
  "helperDeviceName": "String",
  "helperEnrollmentState": "String",
  "sharerEmail": "String",
  "sharerTenantId": "String",
  "sharerFirstName": "String",
  "sharerLastName": "String",
  "sharerDeviceAadId": "String",
  "sharerDeviceName": "String",
  "sharerEnrollmentState": "String"
}
```



