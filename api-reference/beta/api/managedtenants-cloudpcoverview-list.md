---
title: "List cloudPcOverviews"
description: "Get a list of the cloudPcOverview objects and their properties."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: apiPageType
---

# List cloudPcOverviews
Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [cloudPcOverview](../resources/managedtenants-cloudpcoverview.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CloudPC.Read.All, CloudPC.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/managedTenants/cloudPcsOverview
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [cloudPcOverview](../resources/managedtenants-cloudpcoverview.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_cloudpcoverview"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/managedTenants/cloudPcsOverview
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.managedTenants.cloudPcOverview)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.managedTenants.cloudPcOverview",
      "id": "6057790f-790f-6057-0f79-57600f795760",
      "tenantDisplayName": "String",
      "totalCloudPcStatus": "Integer",
      "numberOfCloudPcStatusNotProvisioned": "Integer",
      "numberOfCloudPcStatusProvisioning": "Integer",
      "numberOfCloudPcStatusProvisioned": "Integer",
      "numberOfCloudPcStatusUpgrading": "Integer",
      "numberOfCloudPcStatusInGracePeriod": "Integer",
      "numberOfCloudPcStatusDeprovisioning": "Integer",
      "numberOfCloudPcStatusFailed": "Integer",
      "numberOfCloudPcStatusUnknown": "Integer",
      "totalCloudPcConnectionStatus": "Integer",
      "numberOfCloudPcConnectionStatusPending": "Integer",
      "numberOfCloudPcConnectionStatusRunning": "Integer",
      "numberOfCloudPcConnectionStatusPassed": "Integer",
      "numberOfCloudPcConnectionStatusFailed": "Integer",
      "numberOfCloudPcConnectionStatusUnkownFutureValue": "Integer",
      "lastRefreshedDateTime": "String (timestamp)"
    }
  ]
}
```
