---
title: "Get signIn"
doc_type: apiPageType
description: "Get a signIn object that contains all sign-ins for an Azure Active Directory tenant."
ms.localizationpriority: medium
author: "besiler"
ms.prod: "identity-and-access-reports"
---

# Get signIn

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a [signIn](../resources/signin.md) object that contains a specific user sign-in event for your tenant. This includes sign-ins where a user is asked to enter a username or password, and session tokens.

[!INCLUDE [GDPR-related-guidance](../../includes/gdpr-msgraph-export-note.md)]

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
| Delegated (work or school account) | AuditLog.Read.All and Directory.Read.All |
| Delegated (personal Microsoft account) | Not supported |
| Application | AuditLog.Read.All and Directory.Read.All | 

Apps must be [properly registered](/azure/active-directory/active-directory-reporting-api-prerequisites-azure-portal) to Azure AD.

In addition to the delegated permissions, the signed-in user needs to belong to one of the following directory roles that allow them to read sign-in reports. To learn more about directory roles, see [Azure AD built-in roles](/azure/active-directory/roles/permissions-reference):
+ Global Administrator
+ Global Reader
+ Reports Reader
+ Security Administrator
+ Security Operator
+ Security Reader

[!INCLUDE [signins-roles-for-ca-data](../../includes/signins-roles-for-ca-data.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /auditLogs/signIns/{id}
```

## Optional query parameters

This method supports OData query parameters to help customize the response. For details about how to use these parameters, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {token} |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [signIn](../resources/signin.md) object in the response body.

## Example

### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_signin_1",
  "sampleKeys": ["66ea54eb-blah-4ee5-be62-ff5a759b0100"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/auditLogs/signIns/66ea54eb-blah-4ee5-be62-ff5a759b0100
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-signin-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-signin-1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-signin-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-signin-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-signin-1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-signin-1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.signIn"
} -->


```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id":"66ea54eb-blah-4ee5-be62-ff5a759b0100",
  "createdDateTime":"2021-06-30T16:34:32Z",
  "userDisplayName":"Test contoso",
  "userPrincipalName":"testaccount1@contoso.com",
  "userId":"26be570a-1111-5555-b4e2-a37c6808512d",
  "appId":"c44b4083-3bb0-49c1-b47d-974e53cbdf3c",
  "appDisplayName":"Azure Portal",
  "authenticationContextClassReferences": [
      {
        "id":"C1",
        "details":"required"
      }
  ],
  "authenticationProtocol": "oAuth2",
  "incomingTokenType": "Primary Refresh Token",
  "ipAddress":"131.107.159.37",
  "clientAppUsed":"Browser",
  "clientCredentialType": "certificate",
  "userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36 Edg/91.0.864.54",
  "correlationId":"5d295068-919b-4017-85d8-44be2f5f5483",
  "conditionalAccessStatus":"notApplied",
  "originalRequestId":"7dccb0d7-1041-4d82-b785-d865272e1400",
  "homeTenantId": "4f7a7bc2-28e2-46a3-b90e-5ade5bc90138",
  "homeTenantName": "",
  "isTenantRestricted": false,
  "isInteractive":true,
  "tokenIssuerName":"",
  "tokenIssuerType":"AzureAD",
  "processingTimeInMilliseconds":761,
  "riskDetail":"none",
  "riskLevelAggregated":"none",
  "riskLevelDuringSignIn":"none",
  "riskState":"none",
  "riskEventTypes_v2":[],
  "resourceDisplayName":"Windows Azure Service Management API",
  "resourceId":"797f4846-ba00-4fd7-ba43-dac1f8f63013",
  "resourceServicePrincipalId": "a6033f22-27f9-45cb-8f63-7dd8a0590e4e",
  "uniqueTokenIdentifier": "ZTE0OTk3YTQtZjg5Mi00YjBiLWIwNTEtZmViZTA1YzJhNDli",
  "resourceTenantId":"99081087-73c4-48d1-a112-f60ff75114f7",
  "homeTenantId":"99081087-73c4-48d1-a112-f60ff75114f7",
  "authenticationAppDeviceDetails": null,
  "authenticationAppPolicyDetails": null,
  "authenticationMethodsUsed":[],
  "authenticationRequirement":"singleFactorAuthentication",
  "azureResourceId": "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/testRG/providers/Microsoft.Compute/virtualMachines/testVM",
  "federatedCredentialId": "729ab02a-edd5-4ef5-a285-2d91a3c772ab",
  "signInIdentifier":"testaccount1@contoso.com",
  "signInEventTypes":["interactiveUser"],
  "servicePrincipalId":"",
  "sessionLifetimePolicies": [
    {
      "expirationRequirement": "tenantTokenLifetimePolicy",
      "detail": "The user was required to sign in again according to the tenant session lifetime policy"
    }
  ],
  "userType":"member",
  "flaggedForReview":false,
  "isTenantRestricted":false,
  "autonomousSystemNumber":3598,
  "crossTenantAccessType":"none",
  "status":{
      "errorCode":50126,
      "failureReason":"Error validating credentials due to invalid username or password.",
      "additionalDetails":"The user didn't enter the right credentials. \u00a0It's expected to see some number of these errors in your logs due to users making mistakes."
    },
  "deviceDetail":{
      "deviceId":"",
      "displayName":"",
      "operatingSystem":"Windows 10",
      "browser":"Edge 91.0.864",
      "isCompliant":false,
      "isManaged":false,
      "trustType":""
    },
  "location":{
      "city":"Redmond",
      "state":"Washington",
      "countryOrRegion":"US",
      "geoCoordinates":{
        "altitude":null,
        "latitude":47.6807,
        "longitude":-122.1231
      }
    },
  "appliedConditionalAccessPolicies":[],
  "authenticationProcessingDetails":[
      {
        "key":"Login Hint Present",
        "value":"True"
      }
    ],
  "networkLocationDetails":[
      {
        "networkType":"namedNetwork",
        "networkNames":["North America"]
      }
    ],
    "managedServiceIdentity":{
          "msiType":"systemAssigned",
          "associatedResourceId":"/subscriptions/a89523b8-b5db-4697-9c1b-2f7dcfd074d9/resourcegroups/Scenario-TestRPToKeyVaultSAJob_USCentral/providers/Providers.Test/msiStateful/testrp30964"
          },
  "authenticationDetails":[
      {
        "authenticationStepDateTime":"2021-06-30T16:34:32Z",
        "authenticationMethod":"Password",
        "authenticationMethodDetail":"Password in the cloud",
        "succeeded":false,
        "authenticationStepResultDetail":"Invalid username or password or Invalid on-premise username or password.",
        "authenticationStepRequirement":"Primary authentication"
      }
    ],
  "authenticationRequirementPolicies":[],
  "sessionLifetimePolicies":[]
}
```
