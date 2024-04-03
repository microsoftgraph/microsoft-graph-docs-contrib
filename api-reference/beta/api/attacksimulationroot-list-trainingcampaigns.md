---
title: "List trainingCampaign objects"
description: "Get a list of trainingCampaign objects and their properties."
author: "akgraph"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
ms.topic: reference
---

# List trainingCampaign objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [trainingCampaign](../resources/trainingcampaign.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "attacksimulationroot-list-trainingcampaigns-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/attacksimulationroot-list-trainingcampaigns-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/attackSimulation/trainingCampaigns
```

## Optional query parameters

This method supports the `$count`, `$filter`, `$orderby`, `$skipToken`, `$top`, and `$select` [OData query parameters](/graph/query-parameters) to help customize the response. You can use the `$filter` and `$orderby` query parameters on the **campaignSchedule/completionDateTime**, **displayName**, **campaignSchedule/launchDateTime**, and **campaignSchedule/status** properties.

If the result set spans multiple pages, the response body contains an `@odata.nextLink` that you can use to page through the result set.

The following list shows some examples of requests that use the supported OData query parameters:

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/attackSimulation/trainingCampaigns?$count=true
GET /security/attackSimulation/trainingCampaigns?$filter={property} eq '{property-value}'
GET /security/attackSimulation/trainingCampaigns?$filter={property} eq '{property-value}'&$top=5
GET /security/attackSimulation/trainingCampaigns?$orderby={property}
GET /security/attackSimulation/trainingCampaigns?$skipToken={skipToken}
GET /security/attackSimulation/trainingCampaigns?$top=1
GET /security/attackSimulation/trainingCampaigns?$select={property}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [trainingCampaign](../resources/trainingcampaign.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_trainingcampaign"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/attackSimulation/trainingCampaigns
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-trainingcampaign-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-trainingcampaign-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-trainingcampaign-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-trainingcampaign-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-trainingcampaign-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-trainingcampaign-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-trainingcampaign-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-trainingcampaign-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.trainingCampaign)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "value": [
        {
            "@odata.etag": "W/\"dub9zfj4Rk68MmY/KYwXKgADRgyGsw==\"",
            "id": "81c59451-2929-5b39-86f0-5a2b15f1314f",
            "displayName": "Sample Training Campaign",
            "description": "Sample Training Campaign Description",
            "createdDateTime": "2024-02-18T08:36:07.6534871Z",
            "lastModifiedDateTime": "2024-02-19T08:00:01.9417887Z",
            "endUserNotificationSetting": null,
            "includedAccountTarget": null,
            "excludedAccountTarget": null,
            "trainingSetting": null,
            "campaignSchedule": {
                "launchDateTime": "2024-02-18T08:37:44Z",
                "completionDateTime": "2024-02-19T07:59:44Z",
                "status": "completed"
            },
            "createdBy": {
              "id": "99af58b9-ef1a-412b-a581-cb42fe8c8e21",
              "displayName": "Reed Flores",
              "email": "reed@contoso.com"
            },
            "lastModifiedBy": {
              "id": "99af58b9-ef1a-412b-a581-cb42fe8c8e21",
              "displayName": "Reed Flores",
              "email": "reed@contoso.com"
            },
        }
    ]
}
```

