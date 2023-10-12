---
title: "List inactiveUserFindings"
description: "Get a list of the inactiveUserFinding objects and their properties."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# List inactiveUserFindings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [inactiveUserFinding](../resources/inactiveuserfinding.md) objects and their properties.

You want to view the inactive users in your AWS, Azure, or GCP cloud environments.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported|
|Delegated (personal Microsoft account)|Not supported|
|Application|**SERVICENOWAPI**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/azure/findings/microsoft.graph.inactiveUserFinding
```
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.inactiveUserFinding
```
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/gcp/findings/microsoft.graph.inactiveUserFinding
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

If successful, this method returns a `200 OK` response code and a collection of [inactiveUserFinding](../resources/inactiveuserfinding.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_inactiveuserfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.inactiveUserFinding
```

### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.inactiveUserFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.inactiveUserFinding",
    "value": [
        {
            "id": "MSxJbmFjdGl2ZVVzZXJGaW5kaW5nLDEyMw",
            "createdDateTime": "2023-10-11T19:37:40.7989473Z",
            "actionSummary": {
                "assigned": 1,
                "exercised": 2,
                "available": 3
            },
            "identityDetails": {
                "createdDateTime": "2023-10-11T19:37:40.7989483Z",
                "lastActiveDateTime": "2023-10-11T19:37:40.7989485Z"
            },
            "permissionsCreepIndex": {
                "score": 10
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "TW9kZWxJRA",
                "externalId": "ModelID",
                "displayName": "LoadTesting",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "AuthorizationSystemId"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "AuthorizationSystemId",
                    "authorizationSystemName": "AuthSystemName",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsQXV0aG9yaXphdGlvblN5c3RlbUlk"
                }
            }
        }
    ]
}