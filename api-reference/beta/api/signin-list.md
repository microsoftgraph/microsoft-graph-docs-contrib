---
title: "List signIns"
doc_type: apiPageType
description: "Get a list of the user sign-ins in a Microsoft Entra tenant."
ms.localizationpriority: medium
author: "egreenberg14"
ms.subservice: "entra-monitoring-health"
ms.date: 06/18/2025
---

# List signIns

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [signIn](../resources/signin.md) objects. The list contains the user sign-ins for your Microsoft Entra tenant. Sign-ins where a username and password are passed as part of authorization token, and successful federated sign-ins are currently included in the sign-in logs.

The maximum and default page size is 1,000 objects and by default, the most recent sign-ins are returned first. Only sign-in events that occurred within the Microsoft Entra ID [default retention period](/azure/active-directory/reports-monitoring/reference-reports-data-retention#how-long-does-azure-ad-store-the-data) are available.

[!INCLUDE [GDPR-related-guidance](../../includes/gdpr-msgraph-export-note.md)]


[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "signin_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/signin-list-permissions.md)]

[!INCLUDE [rbac-signin-apis-read](../includes/rbac-for-apis/rbac-signin-apis-read.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /auditLogs/signIns
```

## Optional query parameters

This method supports the `$top`, `$skiptoken`, and `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

To avoid having the request time out, apply the `$filter` parameter with a time range for which to get all sign-ins, as shown in [Example 1](signin-list.md#example-1-list-all-sign-ins-during-a-specific-time-period).

> [!NOTE]
> Only interactive sign-ins are returned through GET signins API requests unless you set an explicit filter on the **signInEventType** property as shown in the following examples:

To request non-interactive sign-ins:
```http
GET https://graph.microsoft.com/beta/auditLogs/signIns?$filter=(createdDateTime ge 2024-01-13T14:13:32Z and createdDateTime le 2024-01-14T17:43:26Z) and signInEventTypes/any(t: t eq 'nonInteractiveUser')
```

To request service principal sign-ins:
```http
GET https://graph.microsoft.com/beta/auditLogs/signIns?$filter=(createdDateTime ge 2024-01-13T14:13:32Z and createdDateTime le 2024-01-14T17:43:26Z) and signInEventTypes/any(t: t eq 'servicePrincipal')
```

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and collection of [signIn](../resources/signin.md) objects in the response body. The collection of objects is listed in descending order based on **createdDateTime**.

## Examples

### Example 1: List all sign-ins during a specific time period
In this example, the response object shows the user signed in using MFA that was triggered by a conditional access policy, and the primary authentication method is through FIDO.


#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_signins_1"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/auditLogs/signIns?$filter=createdDateTime ge 2024-07-01T00:00:00Z and createdDateTime le 2024-07-14T23:59:59Z
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-signins-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-signins-1-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-signins-1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-signins-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-signins-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-signins-1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-signins-1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-signins-1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#auditLogs/signIns",
  "value": [
    {
      "id":"1691d37b-8579-43a7-966a-0f35583c1300",
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
      "ipAddress":"131.107.159.37",
      "clientAppUsed":"Browser",
      "clientCredentialType": "certificate",
      "userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36 Edg/91.0.864.54",
      "correlationId":"5d295068-919b-4017-85d8-44be2f5f5483",
      "conditionalAccessStatus":"notApplied",
      "originalRequestId":"7dccb0d7-1041-4d82-b785-d865272e1400",
      "authenticationProtocol": "oAuth2",
      "incomingTokenType": "Primary Refresh Token",
      "isInteractive":true,
      "homeTenantId": "4f7a7bc2-28e2-46a3-b90e-5ade5bc90138",
      "homeTenantName": "",
      "isTenantRestricted": false,
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
      "resourceTenantId":"99081087-73c4-48d1-a112-f60ff75114f7",
      "homeTenantId":"99081087-73c4-48d1-a112-f60ff75114f7",
      "authenticationAppDeviceDetails": [],
      "authenticationAppPolicyDetails": [],
      "authenticationMethodsUsed":[],
      "authenticationRequirement":"singleFactorAuthentication",
      "azureResourceId": "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/testRG/providers/Microsoft.Compute/virtualMachines/testVM",
      "federatedCredentialId": "729ab02a-edd5-4ef5-a285-2d91a3c772ab",
      "uniqueTokenIdentifier": "ZTE0OTk3YTQtZjg5Mi00YjBiLWIwNTEtZmViZTA1YzJhNDli",
      "signInIdentifier":"testaccount1@contoso.com",
      "signInEventTypes":["interactiveUser"],
      "servicePrincipalId":"",
      "sessionLifetimePolicies": [
        {
          "expirationRequirement": "tenantTokenLifetimePolicy",
          "detail": "The user was required to sign in again according to the tenant session lifetime policy"
        }
      ],
      "uniqueTokenIdentifier": "ZTE0OTk3YTQtZjg5Mi00YjBiLWIwNTEtZmViZTA1YzJhNDli",
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
          }
        },
      "appliedConditionalAccessPolicies":[],
      "authenticationProcessingDetails":[
          {
            "key":"Login Hint Present",
            "value":"True"
          }
        ],
      "managedServiceIdentity":{
          "msiType":"systemAssigned",
          "associatedResourceId":"/subscriptions/aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa/resourcegroups/Scenario-TestRPToKeyVaultSAJob_USCentral/providers/Providers.Test/msiStateful/testrp30964",
          "federatedTokenId" : "aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa",
          "federatedTokenIssuer" : "https://aks_test.prod-aks.azure.com/bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb/"
      },
      "networkLocationDetails":[
          {
            "networkType":"namedNetwork",
            "networkNames":["North America"]
          }
        ],
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
  ]
}
```

### Example 2: Retrieve the first 10 sign-ins to apps with the appDisplayName that starts with 'Azure'

In this example, the response object shows the user signed in using only their primary authentication method—a cloud password. The response includes a `@odata.nextLink` property that contains a URL that can be used to retrieve the next 10 results.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_signins_2"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/auditLogs/signins?&$filter=startsWith(appDisplayName,'Azure')&$top=10
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-signins-2-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-signins-2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-signins-2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#auditLogs/signIns",
  "@odata.nextLink": "https://graph.microsoft.com/beta/auditLogs/signins?$filter=startsWith(appDisplayName%2c%27Azure%27)&$top=10&$skiptoken=3cff228c89605cc89b0dc753668deef4153e8644caa6d83ed1bb5f711b21cba4",
  "value": [
    {
      "id":"1691d37b-8579-43a7-966a-0f35583c1300",
      "createdDateTime":"2021-06-30T16:34:32Z",
      "userDisplayName":"Test contoso",
      "userPrincipalName":"testaccount1@contoso.com",
      "userId":"26be570a-1111-5555-b4e2-a37c6808512d",
      "appId":"c44b4083-3bb0-49c1-b47d-974e53cbdf3c",
      "appDisplayName":"Azure Portal",
      "ipAddress":"131.107.159.37",
      "clientAppUsed":"Browser",
      "userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36 Edg/91.0.864.54",
      "correlationId":"5d295068-919b-4017-85d8-44be2f5f5483",
      "conditionalAccessStatus":"notApplied",
      "homeTenantId": "4f7a7bc2-28e2-46a3-b90e-5ade5bc90138",
      "homeTenantName": "",
      "isTenantRestricted": false,
      "originalRequestId":"7dccb0d7-1041-4d82-b785-d865272e1400",
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
      "resourceTenantId":"99081087-73c4-48d1-a112-f60ff75114f7",
      "homeTenantId":"99081087-73c4-48d1-a112-f60ff75114f7",
      "authenticationAppDeviceDetails": [],
      "authenticationAppPolicyDetails": [],
      "authenticationMethodsUsed":[],
      "authenticationRequirement":"singleFactorAuthentication",
      "authenticationProtocol": "oAuth2",
      "incomingTokenType": "Primary Refresh Token",
      "signInIdentifier":"testaccount1@contoso.com",
      "signInEventTypes":["interactiveUser"],
      "servicePrincipalId":"",
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
      "uniqueTokenIdentifier": "ZTE0OTk3YTQtZjg5Mi00YjBiLWIwNTEtZmViZTA1YzJhNDli",
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
  ]
}
```



### Example 3: Retrieve the first 10 sign-ins where the signInEventType isn't interactiveUser starting with the latest sign-in

In this example, the response includes a `@odata.nextLink` property that contains a URL that can be used to retrieve the next 10 results.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_signins_ne_nonInteractiveUser"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/auditLogs/signins?&$filter=(signInEventTypes/any(t: t ne 'interactiveUser'))&$orderby=createdDateTime DESC&$top=10
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-signins-ne-noninteractiveuser-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-signins-ne-noninteractiveuser-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-signins-ne-noninteractiveuser-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#auditLogs/signIns",
    "@odata.nextLink": "https://graph.microsoft.com/beta/auditLogs/signins?$filter=(signInEventTypes%2fany(t%3a+t+ne+%27interactiveUser%27))&$top=10&$orderby=createdDateTime+DESC&$skiptoken=186ac5626b89ae2a991ff26b674ac381be50b941a40542cb66f8136f2887275b",
    "value": [
        {
            "id": "ef1e1fcc-80bd-489b-82c5-16ad80770e00",
            "createdDateTime": "2022-03-18T18:13:37Z",
            "userDisplayName": "MOD Administrator",
            "userPrincipalName": "admin@contoso.com",
            "userId": "4562bcc8-c436-4f95-b7c0-4f8ce89dca5e",
            "appId": "de8bc8b5-d9f9-48b1-a8ad-b748da725064",
            "appDisplayName": "Graph Explorer",
            "ipAddress": "197.178.9.154",
            "ipAddressFromResourceProvider": null,
            "clientAppUsed": "Browser",
            "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36",
            "correlationId": "17b4f05d-3659-42b8-856d-99322911d398",
            "conditionalAccessStatus": "notApplied",
            "originalRequestId": "",
            "isInteractive": false,
            "tokenIssuerName": "",
            "tokenIssuerType": "AzureAD",
            "processingTimeInMilliseconds": 132,
            "riskDetail": "none",
            "riskLevelAggregated": "none",
            "riskLevelDuringSignIn": "none",
            "riskState": "none",
            "riskEventTypes_v2": [],
            "resourceDisplayName": "Microsoft Graph",
            "resourceId": "00000003-0000-0000-c000-000000000000",
            "resourceTenantId": "84841066-274d-4ec0-a5c1-276be684bdd3",
            "homeTenantId": "84841066-274d-4ec0-a5c1-276be684bdd3",
            "homeTenantName": "",
            "authenticationAppDeviceDetails": [],
            "authenticationAppPolicyDetails": [],
            "authenticationMethodsUsed": [],
            "authenticationRequirement": "singleFactorAuthentication",
            "signInIdentifier": "",
            "signInIdentifierType": null,
            "servicePrincipalName": "",
            "signInEventTypes": [
                "nonInteractiveUser"
            ],
            "servicePrincipalId": "",
            "federatedCredentialId": "",
            "userType": "member",
            "flaggedForReview": false,
            "isTenantRestricted": false,
            "autonomousSystemNumber": 33771,
            "crossTenantAccessType": "none",
            "servicePrincipalCredentialKeyId": "",
            "servicePrincipalCredentialThumbprint": "",
            "uniqueTokenIdentifier": "ZWYxZTFmY2MtODBiZC00ODliLTgyYzUtMTZhZDgwNzcwZTAw",
            "incomingTokenType": "none",
            "authenticationProtocol": "none",
            "resourceServicePrincipalId": "943603e4-e787-4fe9-93d1-e30f749aae39",
            "mfaDetail": null,
            "status": {
                "errorCode": 0,
                "failureReason": "Other.",
                "additionalDetails": null
            },
            "deviceDetail": {
                "deviceId": "eab73519-780d-4d43-be6d-a4a89af2a348",
                "displayName": "DESKTOP-LK3PESR",
                "operatingSystem": "Windows 10",
                "browser": "Chrome 99.0.4844",
                "isCompliant": false,
                "isManaged": false,
                "trustType": "Azure AD registered"
            },
            "location": {
                "city": "Mombasa",
                "state": "Coast",
                "countryOrRegion": "KE",
                "geoCoordinates": {}
            },
            "appliedConditionalAccessPolicies": [
                {
                    "id": "80290cf6-04c8-4a25-8252-2b4d7d88228a",
                    "displayName": "Exchange Online Requires Compliant Device",
                    "enforcedGrantControls": [],
                    "enforcedSessionControls": [],
                    "result": "notEnabled",
                    "conditionsSatisfied": "none",
                    "conditionsNotSatisfied": "none",
                    "includeRulesSatisfied": [],
                    "excludeRulesSatisfied": []
                },
                {
                    "id": "a00746d4-8c33-47f7-b120-91936b367a54",
                    "displayName": "Office 365 App Control",
                    "enforcedGrantControls": [],
                    "enforcedSessionControls": [],
                    "result": "notEnabled",
                    "conditionsSatisfied": "none",
                    "conditionsNotSatisfied": "none",
                    "includeRulesSatisfied": [],
                    "excludeRulesSatisfied": []
                }
            ],
            "authenticationProcessingDetails": [
                {
                    "key": "Root Key Type",
                    "value": "Unknown"
                },
                {
                    "key": "Oauth Scope Info",
                    "value": "[\"Application.ReadWrite.All\",\"AppRoleAssignment.ReadWrite.All\",\"DelegatedPermissionGrant.ReadWrite.All\",\"Directory.ReadWrite.All\",\"openid\",\"profile\",\"RoleManagement.Read.Directory\",\"User.Read\",\"email\",\"AuditLog.Read.All\"]"
                }
            ],
            "networkLocationDetails": [
                {
                    "networkType": "namedNetwork",
                    "networkNames": [
                        "Suspicious countries"
                    ]
                }
            ],
            "authenticationDetails": [],
            "authenticationRequirementPolicies": [],
            "sessionLifetimePolicies": [],
            "privateLinkDetails": {
                "policyId": "",
                "policyName": "",
                "resourceId": "",
                "policyTenantId": ""
            }
        }
    ]
}
```

### Example 4: Retrieve all types of sign-in event types

#### Request

This API returns only interactive sign-ins unless you set an explicit filter. The following request allows you to specify a filter and return all sign-in event types.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_signins_signInEventTypes"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/auditLogs/signins?&$filter=(signInEventTypes/any(t: t eq 'nonInteractiveUser' OR t eq 'interactiveUser' OR t eq 'servicePrincipal' OR t eq 'managedIdentity'))
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-signins-signineventtypes-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-signins-signineventtypes-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-signins-signineventtypes-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.signIn",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#auditLogs/signIns",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET auditLogs/signIns?$select=agent,appDisplayName",
    "value": [
        {
            "id": "30618271-709e-43f3-ac59-f213f7e40800",
            "userPrincipalName": "admin@m365x06786268.onmicrosoft.com",
            "appDisplayName": "Graph Explorer",
            "clientAppUsed": "Browser",
            "userAgent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36",
            "signInEventTypes": [
                "nonInteractiveUser"
            ]
        }
    ]
}
```
