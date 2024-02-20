---
title: "trainingCampaign resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# trainingCampaign resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


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
|campaignSchedule|[campaignSchedule](../resources/campaignschedule.md)|**TODO: Add Description**|
|createdBy|[emailIdentity](../resources/emailidentity.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|endUserNotificationSetting|[endUserNotificationSetting](../resources/endusernotificationsetting.md)|**TODO: Add Description**|
|excludedAccountTarget|[accountTargetContent](../resources/accounttargetcontent.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|includedAccountTarget|[accountTargetContent](../resources/accounttargetcontent.md)|**TODO: Add Description**|
|lastModifiedBy|[emailIdentity](../resources/emailidentity.md)|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|report|[trainingCampaignReport](../resources/trainingcampaignreport.md)|**TODO: Add Description**|
|trainingSetting|[trainingSetting](../resources/trainingsetting.md)|**TODO: Add Description**|

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

