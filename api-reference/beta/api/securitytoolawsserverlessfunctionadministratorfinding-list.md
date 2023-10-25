---
title: "List securityToolAwsServerlessFunctionAdministratorFindings"
description: "Get a list of the securityToolAwsServerlessFunctionAdministratorFinding objects and their properties."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List securityToolAwsServerlessFunctionAdministratorFindings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [securityToolAwsServerlessFunctionAdministratorFinding](../resources/securitytoolawsserverlessfunctionadministratorfinding.md) objects and their properties.

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
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings('id')/graph.securityToolAwsServerlessFunctionAdministratorFinding
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

If successful, this method returns a `200 OK` response code and a collection of [securityToolAwsServerlessFunctionAdministratorFinding](../resources/securitytoolawsserverlessfunctionadministratorfinding.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_securitytoolawsserverlessfunctionadministratorfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings('MSxTZWN1cml0eVRvb2xBd3NTZXJ2ZXJsZXNzRnVuY3Rpb25BZG1pbmlzdHJhdG9yRmluZGluZyw1MDA2')/graph.securityToolAwsServerlessFunctionAdministratorFinding
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.securityToolAwsServerlessFunctionAdministratorFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://canary.graph.microsoft.com/testprodbetaevan_schema/$metadata#identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.securityToolAwsServerlessFunctionAdministratorFinding/$entity",
    "id": "MSxTZWN1cml0eVRvb2xBd3NTZXJ2ZXJsZXNzRnVuY3Rpb25BZG1pbmlzdHJhdG9yRmluZGluZyw1MDA2",
    "createdDateTime": "2023-10-25T19:49:40.33157Z",
    "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
    "permissionsCreepIndex": {
        "score": 98
    },
    "identity": {
        "@odata.type": "#microsoft.graph.awsLambda",
        "id": "YXJuOmF3czpsYW1iZGE6dXMtd2VzdC0yOjk1Njk4Nzg4NzczNTpmdW5jdGlvbjp0ZXN0U3VwZXJJZExhbWJkYQ",
        "externalId": "arn:aws:lambda:us-west-2:956987887735:function:testSuperIdLambda",
        "displayName": "testSuperIdLambda",
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

