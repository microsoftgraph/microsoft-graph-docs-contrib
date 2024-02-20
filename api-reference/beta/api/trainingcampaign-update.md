---
title: "Update trainingCampaign"
description: "Update the properties of a trainingCampaign object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update trainingCampaign

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [trainingCampaign](../resources/trainingcampaign.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "trainingcampaign-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/trainingcampaign-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /security/attackSimulation/trainingCampaigns/{trainingCampaignId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[emailIdentity](../resources/emailidentity.md)|**TODO: Add Description** Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|description|String|**TODO: Add Description** Optional.|
|displayName|String|**TODO: Add Description** Required.|
|endUserNotificationSetting|[endUserNotificationSetting](../resources/endusernotificationsetting.md)|**TODO: Add Description** Optional.|
|excludedAccountTarget|[accountTargetContent](../resources/accounttargetcontent.md)|**TODO: Add Description** Optional.|
|includedAccountTarget|[accountTargetContent](../resources/accounttargetcontent.md)|**TODO: Add Description** Optional.|
|lastModifiedBy|[emailIdentity](../resources/emailidentity.md)|**TODO: Add Description** Optional.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|report|[trainingCampaignReport](../resources/trainingcampaignreport.md)|**TODO: Add Description** Optional.|
|trainingSetting|[trainingSetting](../resources/trainingsetting.md)|**TODO: Add Description** Optional.|
|campaignSchedule|[campaignSchedule](../resources/campaignschedule.md)|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [trainingCampaign](../resources/trainingcampaign.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_trainingcampaign"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/security/attackSimulation/trainingCampaigns/{trainingCampaignId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.trainingCampaign",
  "createdBy": {
    "@odata.type": "microsoft.graph.emailIdentity"
  },
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


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.trainingCampaign",
  "id": "1b88f82e-bb8d-1b4b-24a1-7c49c95d89cf",
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

