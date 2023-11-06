---
title: "List securityToolAwsRoleAdministratorFindings"
description: "Get a list of the securityToolAwsRoleAdministratorFinding objects and their properties."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List securityToolAwsRoleAdministratorFindings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [securityToolAwsRoleAdministratorFinding](../resources/securitytoolawsroleadministratorfinding.md) objects and their properties.

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
GET/identityGovernance/permissionsAnalytics/aws/findings('id')/graph.securityToolAwsRoleAdministratorFinding
```

## Optional query parameters
This method supports `$filter` and `$orderby` of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [securityToolAwsRoleAdministratorFinding](../resources/securitytoolawsroleadministratorfinding.md) objects in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_securitytoolawsroleadministratorfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings('MSxTZWN1cml0eVRvb2xBd3NSb2xlQWRtaW5pc3RyYXRvckZpbmRpbmcsNDAyNDE')/graph.securityToolAwsRoleAdministratorFinding
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.securityToolAwsRoleAdministratorFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://canary.graph.microsoft.com/testprodbetaevan_schema/$metadata#identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.securityToolAwsRoleAdministratorFinding/$entity",
    "id": "MSxTZWN1cml0eVRvb2xBd3NSb2xlQWRtaW5pc3RyYXRvckZpbmRpbmcsNDAyNDE",
    "createdDateTime": "2023-10-25T19:48:41.223948Z",
    "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
    "permissionsCreepIndex": {
        "score": 93
    },
    "identity": {
        "@odata.type": "#microsoft.graph.awsRole",
        "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDpyb2xlL29rdGEtYWRtaW4",
        "externalId": "arn:aws:iam::377596131774:role/okta-admin",
        "displayName": "okta-admin",
        "source": {
            "@odata.type": "#microsoft.graph.awsSource",
            "identityProviderType": "aws",
            "accountId": "377596131774"
        },
        "authorizationSystem": {
            "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
            "authorizationSystemId": "377596131774",
            "authorizationSystemName": "cloudknox-staging",
            "authorizationSystemType": "aws",
            "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
        }
    }
}
```

