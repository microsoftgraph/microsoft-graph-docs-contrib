---
title: "Get inactiveUserFinding"
description: "Read the properties and relationships of an inactiveUserFinding object."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Get inactiveUserFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [inactiveUserFinding](../resources/inactiveuserfinding.md) object. Get the authorizationSystemIdentity resources from the identity navigation property.

You want to view details about an inactive user in an AWS account, Azure subscription, or GCP project.


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
```http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/graph.inactiveUserFinding?$filter=identity/authorizationSystem/authorizationSystemId IN [{authorizationSystemIds}]
```
<!-- {
  "blockType": "ignored"
}
-->
```http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/azure/findings/graph.inactiveUserFinding?$filter=identity/authorizationSystem/authorizationSystemId IN [{authorizationSystemIds}]
```
<!-- {
  "blockType": "ignored"
}
-->
```http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/gcp/findings/graph.inactiveUserFinding?$filter=identity/authorizationSystem/authorizationSystemId IN [{authorizationSystemIds}]
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

If successful, this method returns a `200 OK` response code and an [inactiveUserFinding](../resources/inactiveuserfinding.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_inactiveuserfinding"
}
-->
```http
GET https://canary.graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.inactiveUserFinding
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.inactiveUserFinding"
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
            "createdDateTime": "2023-10-11T19:55:35.7420719Z",
            "actionSummary": {
                "assigned": 1,
                "exercised": 2,
                "available": 3
            },
            "identityDetails": {
                "createdDateTime": "2023-10-11T19:55:35.742073Z",
                "lastActiveDateTime": "2023-10-11T19:55:35.7420731Z"
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

