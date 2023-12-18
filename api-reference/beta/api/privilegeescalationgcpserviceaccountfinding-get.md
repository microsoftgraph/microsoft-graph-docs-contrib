---
title: "Get privilegeEscalationGcpServiceAccountFinding"
description: "Read the properties and relationships of a privilegeEscalationGcpServiceAccountFinding object."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# Get privilegeEscalationGcpServiceAccountFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [privilegeEscalationGcpServiceAccountFinding](../resources/privilegeescalationgcpserviceaccountfinding.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported.|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/gcp/findings/{id}/microsoft.graph.privilegeEscalationGcpServiceAccountFinding
```

## Optional query parameters
This method does not support any OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [privilegeEscalationGcpServiceAccountFinding](../resources/privilegeescalationgcpserviceaccountfinding.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_privilegeescalationgcpserviceaccountfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/gcp/findings/MSxQcml2aWxlZ2VFc2NhbGF0aW9uR2NwU2VydmljZUFjY291bnRGaW5kaW5nLDE0OTMwOQ/microsoft.graph.privilegeEscalationGcpServiceAccountFinding
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-privilegeescalationgcpserviceaccountfinding-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-privilegeescalationgcpserviceaccountfinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.privilegeEscalationGcpServiceAccountFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/permissionsAnalytics/gcp/findings/microsoft.graph.privilegeEscalationGcpServiceAccountFinding/$entity",
    "id": "MSxQcml2aWxlZ2VFc2NhbGF0aW9uR2NwU2VydmljZUFjY291bnRGaW5kaW5nLDE0OTMwOQ",
    "createdDateTime": "2023-10-17T23:46:11.351397Z",
    "permissionsCreepIndex": {
        "score": 1
    },
    "identity": {
        "@odata.type": "#microsoft.graph.gcpServiceAccount",
        "id": "bWNpZW0tc2VydmljZS1wcm9kYzVAa25veC1kZXZlbG9wbWVudC1zdGFjay5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbQ",
        "externalId": "mciem-service-prodc5@knox-development-stack.iam.gserviceaccount.com",
        "displayName": "mciem-service-prodc5",
        "source": {
            "@odata.type": "#microsoft.graph.gsuiteSource",
            "identityProviderType": "gsuite",
            "domain": "knox-development-stack.iam.gserviceaccount.com"
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

