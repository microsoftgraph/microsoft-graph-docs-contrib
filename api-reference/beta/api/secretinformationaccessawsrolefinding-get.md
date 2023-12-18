---
title: "Get secretInformationAccessAwsRoleFinding"
description: "Read the properties and relationships of a secretInformationAccessAwsRoleFinding object."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# Get secretInformationAccessAwsRoleFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [secretInformationAccessAwsRoleFinding](../resources/secretinformationaccessawsrolefinding.md) object.

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
GET /identityGovernance/permissionsAnalytics/aws/findings/{id}/microsoft.graph.secretInformationAccessAwsRoleFinding
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

If successful, this method returns a `200 OK` response code and a [secretInformationAccessAwsRoleFinding](../resources/secretinformationaccessawsrolefinding.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_secretinformationaccessawsrolefinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/MSxTZWNyZXRJbmZvcm1hdGlvbkFjY2Vzc0F3c1JvbGVGaW5kaW5nLDQ4Mzcz/microsoft.graph.secretInformationAccessAwsRoleFinding
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-secretinformationaccessawsrolefinding-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-secretinformationaccessawsrolefinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.secretInformationAccessAwsRoleFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.secretInformationAccessAwsRoleFinding/$entity",
    "id": "MSxTZWNyZXRJbmZvcm1hdGlvbkFjY2Vzc0F3c1JvbGVGaW5kaW5nLDQ4Mzcz",
    "createdDateTime": "2023-10-25T23:48:13.788962Z",
    "secretInformationWebServices": "secretsManager,certificateAuthority,cloudHsm,certificateManager",
    "permissionsCreepIndex": {
        "score": 98
    },
    "identity": {
        "@odata.type": "#microsoft.graph.awsRole",
        "id": "YXJuOmF3czppYW06Ojk1Njk4Nzg4NzczNTpyb2xlL3N0YWNrc2V0cy1leGVjLTVlMWEyNzViOTgxOThhMWY5OTI2ZjgwYTRmY2M3YTc2",
        "externalId": "arn:aws:iam::956987887735:role/stacksets-exec-5e1a275b98198a1f9926f80a4fcc7a76",
        "displayName": "stacksets-exec-5e1a275b98198a1f9926f80a4fcc7a76",
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

