---
title: "Get overprovisionedAwsResourceFinding"
description: "Read the properties and relationships of an overprovisionedAwsResourceFinding object."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# Get overprovisionedAwsResourceFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [overprovisionedAwsResourceFinding](../resources/overprovisionedawsresourcefinding.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported|
|Delegated (personal Microsoft account)|Not supported|
|Application|Not supported|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET https://graph.microsoft.com/identityGovernance/permissionsAnalytics/aws/findings('id')/graph.overprovisionedAwsResourceFinding
```

## Optional query parameters

This method supports none of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [overprovisionedAwsResourceFinding](../resources/overprovisionedawsresourcefinding.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_overprovisionedawsresourcefinding"
}
-->
``` http
GET https://graph.microsoft.com/identityGovernance/permissionsAnalytics/aws('MSxPdmVycHJvdmlzaW9uZWRBd3NSZXNvdXJjZUZpbmRpbmcsMzExNDk')/findings/graph.overprovisionedAwsResourceFinding
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.overprovisionedAwsResourceFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://canary.graph.microsoft.com/testprodbetaevan_schema/$metadata#identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.overprovisionedAwsResourceFinding/$entity",
    "id": "MSxPdmVycHJvdmlzaW9uZWRBd3NSZXNvdXJjZUZpbmRpbmcsMzExNDk",
    "createdDateTime": "2023-10-17T23:47:23.622189Z",
    "actionSummary": {
        "assigned": 1961,
        "exercised": 4,
        "available": 58
    },
    "identityDetails": {
      "createdDateTime": "String (timestamp)",
      "lastActiveDateTime": "String (timestamp)"
    },
    "permissionsCreepIndex": {
        "score": 2
    },
    "identity": {
        "@odata.type": "#microsoft.graph.awsEc2Instance",
        "id": "YXJuOmF3czplYzI6dXMtd2VzdC0yOjk1Njk4Nzg4NzczNTppbnN0YW5jZS9pLTAzMmQ0YjNhMzdmNGQ1NGY4",
        "externalId": "arn:aws:ec2:us-west-2:956987887735:instance/i-032d4b3a37f4d54f8",
        "displayName": "PratS20-02252021-4",
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
