---
title: "trainingCampaign resource type"
description: "Represents a training campaign."
author: "akgraph"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# trainingCampaign resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In Attack simulation training in Microsoft 365 E5 or Microsoft Defender for Office 365 Plan 2, training campaigns are a fast, direct way to provide security training to users. Instead of creating and launching simulated phishing attacks that eventually lead to training, you can create and assign training campaigns directly to users.

A training campaign contains one or more built-in training modules that you select. Currently, there are over 70 training modules to select from. For more information about training modules, see training modules for Training campaigns in Attack simulation training.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List trainingCampaign objects](../api/attacksimulationroot-list-trainingcampaigns.md)|[trainingCampaign](../resources/trainingcampaign.md) collection|Get a list of the [trainingCampaign](../resources/trainingcampaign.md) objects and their properties.|
|[Create trainingCampaign](../api/attacksimulationroot-post-trainingcampaigns.md)|[trainingCampaign](../resources/trainingcampaign.md)|Create a new [trainingCampaign](../resources/trainingcampaign.md) object.|
|[Get trainingCampaign](../api/trainingcampaign-get.md)|[trainingCampaign](../resources/trainingcampaign.md)|Read the properties and relationships of a [trainingCampaign](../resources/trainingcampaign.md) object.|
|[Update trainingCampaign](../api/trainingcampaign-update.md)|[trainingCampaign](../resources/trainingcampaign.md)|Update the properties of a [trainingCampaign](../resources/trainingcampaign.md) object.|
|[Delete trainingCampaign](../api/attacksimulationroot-delete-trainingcampaigns.md)|None|Delete a [trainingCampaign](../resources/trainingcampaign.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|campaignSchedule|[campaignSchedule](../resources/campaignschedule.md)|Details about the schedule and current status for a training campaign|
|createdBy|[emailIdentity](../resources/emailidentity.md)|Identity of the user who created the training campaign|
|createdDateTime|DateTimeOffset|Date and time of creation of the training campaign.|
|description|String|Description of the training campaign.|
|displayName|String|Display name of the training campaign. Supports `$filter` and `$orderby`.|
|endUserNotificationSetting|[endUserNotificationSetting](../resources/endusernotificationsetting.md)|Details about the end user notification setting.|
|excludedAccountTarget|[accountTargetContent](../resources/accounttargetcontent.md)|Users excluded from the training campaign.|
|id|String|Unique identifier for the training campaign. Inherited from [entity](../resources/entity.md).|
|includedAccountTarget|[accountTargetContent](../resources/accounttargetcontent.md)|Users targeted in the training campaign.|
|lastModifiedBy|[emailIdentity](../resources/emailidentity.md)|Identity of the user who most recently modified the training campaign.|
|lastModifiedDateTime|DateTimeOffset|Date and time of the most recent modification of the training campaign.|
|report|[trainingCampaignReport](../resources/trainingcampaignreport.md)|Report of the training campaign.|
|trainingSetting|[trainingSetting](../resources/trainingsetting.md)|Details about the training settings for a training campaign.|

### campaignStatus values 

|Member|Description |
|:---|:---|
|unknown| The campaign status is not defined. |
|draft| The campaign is in draft mode. |
|inProgress| The campaign is in progress. |
|scheduled| The campaign is scheduled. |
|completed| The campaign is complete. |
|failed| The campaign is failed. |
|cancelled| The campaign is cancelled. |
|excluded| The campaign is excluded. |
|deleted| The campaign is in draft mode. |
|unknownFutureValue| Evolvable enumeration sentinel value. Do not use. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.trainingCampaign",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.trainingCampaign",
  "id": "String (identifier)",
  "createdBy": {
    "@odata.type": "microsoft.graph.emailIdentity"
  },
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "endUserNotificationSetting": {
    "@odata.type": "microsoft.graph.endUserNotificationSetting"
  },
  "excludedAccountTarget": {
    "@odata.type": "microsoft.graph.accountTargetContent"
  },
  "includedAccountTarget": {
    "@odata.type": "microsoft.graph.accountTargetContent"
  },
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.emailIdentity"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "report": {
    "@odata.type": "microsoft.graph.trainingCampaignReport"
  },
  "trainingSetting": {
    "@odata.type": "microsoft.graph.trainingSetting"
  },
  "campaignSchedule": {
    "@odata.type": "microsoft.graph.campaignSchedule"
  }
}
```

## Related content
- [Training campaigns in Attack simulation training](/microsoft-365/security/office-365-security/attack-simulation-training-training-campaigns?view=o365-worldwide&preserve-view=true)

