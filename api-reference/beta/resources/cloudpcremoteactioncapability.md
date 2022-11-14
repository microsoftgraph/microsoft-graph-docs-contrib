---
title: "cloudPcRemoteActionCapability resource type"
description: "The action name and capability of a supported Cloud PC remote action. This is the element type of the returned list of GetSupportedCloudPcRemoteActions API."
author: "hanky0301"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcPartnerAgentInstallResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The action name and capability of a supported Cloud PC remote action. This is the element type of the returned list of GetSupportedCloudPcRemoteActions API.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|actionName|[actionName](#cloudpcremoteactionname-values)|The name of the supported Cloud PC remote action. Possible values are: unknown, restart, rename, restore, resize, reprovision, troubleShoot, changeUserAccountType, placeUnderReview. Default value is unknown.|
|actionCapability|[actionCapability](#actioncapability-values)|The capability to perform a Cloud PC remote action, indicates state of the supported action. Possible values are: enabled, disabled. Default value is enabled.|

### cloudPcRemoteActionName values

|Member|Description|
|:---|:---|
|unknown|Default. Set to unknown if the remote action name is unknown and not in the list.|
|restart|Indicates that the remote action name is restart. IT admin can trigger this action to restart a Cloud PC.|
|rename|Indicates that the remote action name is rename. IT admin can trigger this action to update a Cloud PC's displayName.|
|resize|Indicates that the remote action name is resize. IT admin can trigger this action to upgrade or downgrade a Cloud PC by changing its service plan. For example, from 2 vCPU to 4 vCPU.|
|restore|Indicates that the remote action name is restore. IT admin can trigger this action to restore a Cloud PC to a previous state from a shapshot.|
|reprovision|Indicates that the remote action name is reprovision. IT admin can trigger this action to re-create a Cloud PC by a given Cloud PC id if any unresolvable issues occurrs.|
|changeUserAccountType|Indicates that the remote action name is changeUserAccountType. IT admin can trigger this action to change the account type of a Cloud PC's user. For example, from standard user to admin.|
|troubleshoot|Indicates that the remote action name is troubleshoot. IT admin can trigger this action to check the Cloud PC and SessionHost health status.|
|placeUnderReview|Indicates that the remote action name is placeUnderReview. When IT admin considers a Cloud PC suspicious, he can trigger this action to set the Cloud PC to review state or set it back.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|

#### actionCapability values

|Member|Description|
|:---|:---|
|enabled|Default. Indicates that the remote action is allowed to be performed on the Cloud PC.|
|disabled|Indicates that the remote action is currently disabled for the Cloud PC.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcRemoteActionCapability"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcRemoteActionCapability",
  "actionName": "String",
  "actionCapability": "String"
}
```
