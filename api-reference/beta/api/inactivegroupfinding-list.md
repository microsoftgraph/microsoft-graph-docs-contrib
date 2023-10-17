---
title: "List inactiveGroupFindings"
description: "Get a list of the inactiveGroupFinding objects and their properties."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List inactiveGroupFindings

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [inactiveGroupFinding](../resources/inactivegroupfinding.md) objects and their properties.
You want to view the inactive groups in your AWS, Azure, or GCP cloud environments.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).
|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported|
|Delegated (personal Microsoft account)|Not supported|
|Application|**SERVICENOWAPI**|

## HTTP request

List AWS inactive groups:
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.inactiveGroupFinding
```

List Azure inactive groups:
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /identityGovernance/permissionsAnalytics/azure/findings/microsoft.graph.inactiveGroupFinding
```

List GCP inactive groups:
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /identityGovernance/permissionsAnalytics/gcp/findings/microsoft.graph.inactiveGroupFinding
```

## Optional query parameters

This method supports the `$filter` and `$orderby` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [inactiveGroupFinding](../resources/inactivegroupfinding.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_inactivegroupfinding"
}
-->
```http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/gcp/findings/graph.inactiveGroupFinding
```

### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.inactiveGroupFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://canary.graph.microsoft.com/testprodbetaevan_schema/$metadata#identityGovernance/permissionsAnalytics/gcp/findings/microsoft.graph.inactiveGroupFinding",
    "value": [
        {
            "id": "MSxJbmFjdGl2ZUdyb3VwRmluZGluZyw2MDI0NA",
            "createdDateTime": "2023-10-17T15:46:31.448597Z",
            "permissionsCreepIndex": {
                "score": 1
            },
            "actionSummary": {
                "assigned": 3011,
                "exercised": 0,
                "available": 7075
            },
            "group": {
                "@odata.type": "#microsoft.graph.gcpGroup",
                "id": "dGVzdGdyb3VwQGNsb3Vka25veC5pbw",
                "externalId": "testgroup@cloudknox.io",
                "displayName": "testgroup",
                "source": {
                    "@odata.type": "#microsoft.graph.gsuiteSource",
                    "identityProviderType": "gsuite",
                    "domain": "carbide-bonsai-205017"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.gcpAuthorizationSystem",
                    "authorizationSystemId": "carbide-bonsai-205017",
                    "authorizationSystemName": "ck-staging",
                    "authorizationSystemType": "gcp",
                    "id": "MSxnY3AsY2FyYmlkZS1ib25zYWktMjA1MDE3"
                }
            }
        },
        {
            "id": "MSxJbmFjdGl2ZUdyb3VwRmluZGluZyw2MDI0NQ",
            "createdDateTime": "2023-10-17T15:46:31.448597Z",
            "permissionsCreepIndex": {
                "score": 1
            },
            "actionSummary": {
                "assigned": 3061,
                "exercised": 0,
                "available": 7075
            },
            "group": {
                "@odata.type": "#microsoft.graph.gcpGroup",
                "id": "ZW5naW5lZXJpbmdAY2xvdWRrbm94Lmlv",
                "externalId": "engineering@cloudknox.io",
                "displayName": "engineering",
                "source": {
                    "@odata.type": "#microsoft.graph.gsuiteSource",
                    "identityProviderType": "gsuite",
                    "domain": "carbide-bonsai-205017"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.gcpAuthorizationSystem",
                    "authorizationSystemId": "carbide-bonsai-205017",
                    "authorizationSystemName": "ck-staging",
                    "authorizationSystemType": "gcp",
                    "id": "MSxnY3AsY2FyYmlkZS1ib25zYWktMjA1MDE3"
                }
            }
        }
    ]
}
```
