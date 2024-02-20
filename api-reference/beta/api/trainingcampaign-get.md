---
title: "Get trainingCampaign"
description: "Read the properties and relationships of a trainingCampaign object."
author: "ak_graph"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Get trainingCampaign

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [trainingCampaign](../resources/trainingcampaign.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "trainingcampaign-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/trainingcampaign-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/attackSimulation/trainingCampaigns/{trainingCampaignId}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [trainingCampaign](../resources/trainingcampaign.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_trainingcampaign"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/attackSimulation/trainingCampaigns/{trainingCampaignId}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.trainingCampaign"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
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
}
```

