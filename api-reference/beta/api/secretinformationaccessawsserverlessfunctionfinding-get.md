---
title: "Get secretInformationAccessAwsServerlessFunctionFinding"
description: "Read the properties and relationships of a secretInformationAccessAwsServerlessFunctionFinding object."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# Get secretInformationAccessAwsServerlessFunctionFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [secretInformationAccessAwsServerlessFunctionFinding](../resources/secretinformationaccessawsserverlessfunctionfinding.md) object.

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
GET /identityGovernance/permissionsAnalytics/aws/findings/{id}/microsoft.graph.secretInformationAccessAwsServerlessFunctionFinding
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

If successful, this method returns a `200 OK` response code and a [secretInformationAccessAwsResourceFinding](../resources/secretinformationaccessawsresourcefinding.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_secretinformationaccessawsserverlessfunctionfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/MSxTZWNyZXRJbmZvcm1hdGlvbkFjY2Vzc0F3c1NlcnZlcmxlc3NGdW5jdGlvbkZpbmRpbmcsNzQyNg/microsoft.graph.secretInformationAccessAwsServerlessFunctionFinding
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-secretinformationaccessawsserverlessfunctionfinding-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-secretinformationaccessawsserverlessfunctionfinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.secretInformationAccessAwsResourceFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.secretInformationAccessAwsServerlessFunctionFinding/$entity",
    "id": "MSxTZWNyZXRJbmZvcm1hdGlvbkFjY2Vzc0F3c1NlcnZlcmxlc3NGdW5jdGlvbkZpbmRpbmcsNzQyNg",
    "createdDateTime": "2023-10-25T23:48:13.066859Z",
    "secretInformationWebServices": "secretsManager",
    "permissionsCreepIndex": {
        "score": 4
    },
    "identity": {
        "@odata.type": "#microsoft.graph.awsLambda",
        "id": "YXJuOmF3czpsYW1iZGE6dXMtd2VzdC0yOjk1Njk4Nzg4NzczNTpmdW5jdGlvbjpDbG91ZEtub3hfSUFNUmlnaHRzaXpl",
        "externalId": "arn:aws:lambda:us-west-2:956987887735:function:CloudKnox_IAMRightsize",
        "displayName": "CloudKnox_IAMRightsize",
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
