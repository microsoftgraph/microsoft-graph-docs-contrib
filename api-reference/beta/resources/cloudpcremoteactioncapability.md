---
title: "cloudPcRemoteActionCapability resource type"
description: "Represents the action name and capability of a supported Cloud PC remote action."
author: "hanky0301"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcRemoteActionCapability resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the action name and capability of a supported Cloud PC remote action.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|actionCapability|[actionCapability](#actioncapability-values)|Indicates the state of the supported action capability to perform a Cloud PC remote action. Possible values are: `enabled`, `disabled`. Default value is `enabled`.|
|actionName|[cloudPcRemoteActionName](#cloudpcremoteactionname-values)|The name of the supported Cloud PC remote action. Possible values are: `unknown`, `restart`, `rename`, `restore`, `resize`, `reprovision`, `troubleShoot`, `changeUserAccountType`, `placeUnderReview`. Default value is `unknown`.|

### cloudPcRemoteActionName values

|Member|Description|
|:---|:---|
|unknown|Indicates the remote action name as `unknown` when the remote action name is unknown and not in the list. Default.|
|restart|Indicates the remote action name as `restart`. Use this action to restart a Cloud PC.|
|rename|Indicates the remote action name as `rename`. Use this action to update the display name of a Cloud PC.|
|resize|Indicates the remote action name as `resize`. Use this action to upgrade or downgrade a Cloud PC by changing its service plan. For example, from 2 vCPU to 4 vCPU.|
|restore|Indicates the remote action name as `restore`. Use this action to restore a Cloud PC to a previous state from a snapshot.|
|reprovision|Indicates the remote action name as `reprovision`. Use this action to re-create a Cloud PC by a given Cloud PC ID if any unresolvable issue occurs.|
|changeUserAccountType|Indicates the remote action name as `changeUserAccountType`. Use this action to change the account type of the user of a Cloud PC. For example, from a standard user to an administrator.|
|troubleshoot|Indicates the remote action name as `troubleshoot`. Use this action to check the health status of the Cloud PC and the session host.|
|placeUnderReview|Indicates the remote action name as `placeUnderReview`. Use this action to set the Cloud PC to review state or set it back, when the Cloud PC is considered suspicious.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|

#### actionCapability values

|Member|Description|
|:---|:---|
|enabled|Indicates that the remote action is allowed to run on the Cloud PC. Default.|
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
  "actionCapability": "String",
  "actionName": "String"
}
```
