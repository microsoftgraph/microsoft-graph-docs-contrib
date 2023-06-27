---
title: "List synchronization jobs"
description: "List existing jobs for a given application instance (service principal)."
ms.localizationpriority: medium
doc_type: apiPageType
author: "ArvindHarinder1"
ms.prod: "applications"
---

# List synchronization jobs

Namespace: microsoft.graph

List existing jobs for a given application instance (service principal).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Synchronization.Read.All, Synchronization.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Application.ReadWrite.OwnedBy, Synchronization.Read.All, Synchronization.ReadWrite.All| 

[!INCLUDE [rbac-synchronization-apis](../includes/rbac-for-apis/rbac-synchronization-apis.md)]

## HTTP Request
<!-- { "blockType": "ignored" } -->
```http
GET /servicePrincipals/{id}/synchronization/jobs/
```

## Request headers

| Name           | Type    | Description|
|:---------------|:--------|:-----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [synchronizationJob](../resources/synchronization-synchronizationjob.md) objects in the response body.

## Example

##### Request
The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "get_jobs_3"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/servicePrincipals/{id}/synchronization/jobs/
```


##### Response
The following is an example of a response. 

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.synchronizationJob",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "id": "{jobId}",
            "templateId": "BoxOutDelta",
            "schedule": {
                "expiration": null,
                "interval": "P10675199DT2H48M5.4775807S",
                "state": "Disabled"
            },
            "status": {
                "countSuccessiveCompleteFailures": 0,
                "escrowsPruned": false,
                "synchronizedEntryCountByType": [],
                "code": "Paused",
                "lastExecution": null,
                "lastSuccessfulExecution": null,
                "lastSuccessfulExecutionWithExports": null,
                "steadyStateFirstAchievedTime": "0001-01-01T00:00:00Z",
                "steadyStateLastAchievedTime": "0001-01-01T00:00:00Z",
                "quarantine": null,
            }
        }
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List jobs",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


