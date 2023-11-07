---
title: "Get superGcpServiceAccountFinding"
description: "Read the properties and relationships of a superGcpServiceAccountFinding object."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# Get superGcpServiceAccountFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [superGcpServiceAccountFinding](../resources/supergcpserviceaccountfinding.md) object.

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
GET https://graph.microsoft.com/identityGovernance/permissionsAnalytics/gcp/findings('id')/graph.superGcpServiceAccountFinding
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

If successful, this method returns a `200 OK` response code and a [superGcpServiceAccountFinding](../resources/supergcpserviceaccountfinding.md) object in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_supergcpserviceaccountfinding"
}
-->
``` http
GET https://graph.microsoft.com/identityGovernance/permissionsAnalytics/gcp/findings('MSxTdXBlckdjcFNlcnZpY2VBY2NvdW50RmluZGluZyw3MDc4')/graph.superGcpServiceAccountFinding
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.superGcpServiceAccountFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://canary.graph.microsoft.com/testprodbetaevan_schema/$metadata#identityGovernance/permissionsAnalytics/gcp/findings/microsoft.graph.superGcpServiceAccountFinding/$entity",
    "id": "MSxTdXBlckdjcFNlcnZpY2VBY2NvdW50RmluZGluZyw3MDc4",
    "createdDateTime": "2023-10-17T19:46:23.069445Z",
    "actionSummary": {
        "assigned": 7068,
        "exercised": 0,
        "available": 7075
    },
    "permissionsCreepIndex": {
        "score": 87
    },
    "identity": {
        "@odata.type": "#microsoft.graph.gcpServiceAccount",
        "id": "Y2hhaXRhbnlhLXRlc3Qtc2NAY2FyYmlkZS1ib25zYWktMjA1MDE3LmlhbS5nc2VydmljZWFjY291bnQuY29t",
        "externalId": "chaitanya-test-sc@carbide-bonsai-205017.iam.gserviceaccount.com",
        "displayName": "chaitanya-test-sc",
        "source": {
            "@odata.type": "#microsoft.graph.gsuiteSource",
            "identityProviderType": "gsuite",
            "domain": "carbide-bonsai-205017.iam.gserviceaccount.com"
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
```

