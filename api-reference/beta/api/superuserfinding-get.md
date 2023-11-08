---
title: "Get superUserFinding"
description: "Read the properties and relationships of a superUserFinding object."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# Get superUserFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [superUserFinding](../resources/superuserfinding.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).
 
|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported.|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

Get AWS super users:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/aws/findings('id')/graph.superUserFinding
```

Get Azure super users:
<!-- {
  "blockType": "ignored",
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/azure/findings('id')/graph.superUserFinding
```

Get GCP super users:
<!-- {
  "blockType": "ignored",
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/gcp/findings('id')/graph.superUserFinding
```

## Optional query parameters
This method does not support OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [superUserFinding](../resources/superuserfinding.md) object in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_superuserfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings('MSxTdXBlclVzZXJGaW5kaW5nLDE1NDczMQ')/graph.superUserFinding
```

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.superUserFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.superUserFinding/$entity",
    "id": "MSxTdXBlclVzZXJGaW5kaW5nLDE1NDczMQ",
    "createdDateTime": "2023-10-17T19:49:19.622563Z",
    "actionSummary": {
        "assigned": 10783,
        "exercised": 0,
        "available": 58
    },
    "permissionsCreepIndex": {
        "score": 100
    },
    "identity": {
        "@odata.type": "#microsoft.graph.awsUser",
        "id": "YXJuOmF3czppYW06Ojk1Njk4Nzg4NzczNTp1c2VyL2FzaHlh",
        "externalId": "arn:aws:iam::956987887735:user/ashya",
        "displayName": "ashya",
        "source": {
            "@odata.type": "#microsoft.graph.awsSource",
            "identityProviderType": "aws",
            "accountId": "956987887735"
        },
        "authorizationSystem": {
            "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
            "authorizationSystemId": "956987887735",
            "authorizationSystemName": "ck-development",
            "authorizationSystemType": "aws",
            "id": "MSxhd3MsOTU2OTg3ODg3NzM1"
        }
    }
}
```
