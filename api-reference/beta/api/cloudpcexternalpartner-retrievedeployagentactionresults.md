---
title: "cloudPcExternalPartner: retrieveDeployAgentActionResults"
description: "Retrieve the status of deployment action."
author: "XunZhangSZ"
ms.date: 01/21/2026
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# cloudPcExternalPartner: retrieveDeployAgentActionResults

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the status of a specific deployment action on a specific Cloud PC device. If both activityId and cloudPcId are empty, the paging results are returned, and the pagination size is 100.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "cloudpcexternalpartner-retrievedeployagentactionresults-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcexternalpartner-retrievedeployagentactionresults-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/virtualEndpoint/externalPartners/{cloudPcExternalPartnerId}/retrieveDeployAgentActionResults(activityId='{activitId}',cloudPcId='{cloudPcId}')
```

## Function parameters
In the request URL, provide the following OData function-call parameters with values.

|Parameter|Type|Description|
|:---|:---|:---|
|activityId|String|The activity ID of agent deployment.|
|cloudPcId|String|The Cloud PC ID that belongs the given deployment activity.|


## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [cloudPcExternalPartnerActionResult](../resources/cloudpcexternalpartneractionresult.md) collection in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "cloudpcexternalpartnerthis.retrievedeployagentactionresults"
}
-->
``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/externalPartners/b3548526-e615-3785-3118-be70b3968ec5/retrieveDeployAgentActionResults(activityId='9adc7d86-6411-407e-b936-abfa0470dccf',cloudPcId='')
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.cloudPcExternalPartnerActionResult)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
        "activityId": "9adc7d86-6411-407e-b936-abfa0470dccf",
        "cloudPcId": "30d0e128-de93-41dc-89ec-33d84bb662a0",
        "state": "canceled",
        "startDateTime": "2025-12-13T03:22:53.0681671Z",
        "lastModifiedDateTime": "2025-12-13T03:22:53Z",
        "errorCode": "deviceNotFound",
        "errorMessage": "Cloud PC not found or invalid"
    },
    {
        "activityId": "9adc7d86-6411-407e-b936-abfa0470dccf",
        "cloudPcId": "7c82a3e3-9459-44e4-94d9-b92f93bf78dd",
        "state": "succeeded",
        "startDateTime": "2025-12-14T03:22:53.0681671Z",
        "lastModifiedDateTime": "2025-12-14T03:22:53Z",
        "errorCode": "none",
        "errorMessage": ""
    }
  ]
}
```

