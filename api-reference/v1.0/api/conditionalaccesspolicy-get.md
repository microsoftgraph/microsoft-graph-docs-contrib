---
title: "Get conditionalAccessPolicy"
description: "Retrieve the properties and relationships of a conditionalAccessPolicy object."
ms.localizationpriority: medium
author: "lisaychuang"
ms.reviewer: conditionalaccesspm
ms.subservice: "entra-sign-in"
doc_type: "apiPageType"
ms.date: 10/17/2024
---

# Get conditionalAccessPolicy

Namespace: microsoft.graph

Retrieve the properties and relationships of a [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "conditionalaccesspolicy_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/conditionalaccesspolicy-get-permissions.md)]

[!INCLUDE [rbac-conditionalaccess-apis-read](../includes/rbac-for-apis/rbac-conditionalaccess-apis-read.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /identity/conditionalAccess/policies/{id}
```

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md) object in the response body.

## Example

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_conditionalaccesspolicy"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/identity/conditionalAccess/policies/10ef4fe6-5e51-4f5e-b5a2-8fed19d0be67
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-conditionalaccesspolicy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-conditionalaccesspolicy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-conditionalaccesspolicy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-conditionalaccesspolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-conditionalaccesspolicy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-conditionalaccesspolicy-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-conditionalaccesspolicy-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.conditionalAccessPolicy"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identity/conditionalAccess/policies/$entity",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET identity/conditionalAccess/policies('<guid>')?$select=conditions,createdDateTime",
    "id": "10ef4fe6-5e51-4f5e-b5a2-8fed19d0be67",
    "templateId": null,
    "displayName": "CA008: Require password change for high-risk users",
    "createdDateTime": "2021-11-02T14:26:29.1005248Z",
    "modifiedDateTime": "2024-01-30T23:11:08.549481Z",
    "state": "enabled",
    "conditions": {
        "userRiskLevels": [
            "high"
        ],
        "signInRiskLevels": [],
        "clientAppTypes": [
            "all"
        ],
        "servicePrincipalRiskLevels": [],
        "insiderRiskLevels": null,
        "platforms": null,
        "locations": null,
        "devices": null,
        "clientApplications": null,
        "applications": {
            "includeApplications": [
                "All"
            ],
            "excludeApplications": [],
            "includeUserActions": [],
            "includeAuthenticationContextClassReferences": [],
            "applicationFilter": null
        },
        "users": {
            "includeUsers": [
                "All"
            ],
            "excludeUsers": [],
            "includeGroups": [],
            "excludeGroups": [
                "eedad040-3722-4bcb-bde5-bc7c857f4983"
            ],
            "includeRoles": [],
            "excludeRoles": [],
            "includeGuestsOrExternalUsers": null,
            "excludeGuestsOrExternalUsers": null
        }
    },
    "grantControls": {
        "operator": "AND",
        "builtInControls": [
            "passwordChange"
        ],
        "customAuthenticationFactors": [],
        "termsOfUse": [],
        "authenticationStrength@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identity/conditionalAccess/policies('10ef4fe6-5e51-4f5e-b5a2-8fed19d0be67')/grantControls/authenticationStrength/$entity",
        "authenticationStrength": {
            "id": "00000000-0000-0000-0000-000000000002",
            "createdDateTime": "2021-12-01T08:00:00Z",
            "modifiedDateTime": "2021-12-01T08:00:00Z",
            "displayName": "Multifactor authentication",
            "description": "Combinations of methods that satisfy strong authentication, such as a password + SMS",
            "policyType": "builtIn",
            "requirementsSatisfied": "mfa",
            "allowedCombinations": [
                "windowsHelloForBusiness",
                "fido2",
                "x509CertificateMultiFactor",
                "deviceBasedPush",
                "temporaryAccessPassOneTime",
                "temporaryAccessPassMultiUse",
                "password,microsoftAuthenticatorPush",
                "password,softwareOath",
                "password,hardwareOath",
                "password,sms",
                "password,voice",
                "federatedMultiFactor",
                "microsoftAuthenticatorPush,federatedSingleFactor",
                "softwareOath,federatedSingleFactor",
                "hardwareOath,federatedSingleFactor",
                "sms,federatedSingleFactor",
                "voice,federatedSingleFactor"
            ],
            "combinationConfigurations@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identity/conditionalAccess/policies('10ef4fe6-5e51-4f5e-b5a2-8fed19d0be67')/grantControls/authenticationStrength/combinationConfigurations",
            "combinationConfigurations": []
        }
    },
    "sessionControls": {
        "disableResilienceDefaults": null,
        "applicationEnforcedRestrictions": null,
        "cloudAppSecurity": null,
        "persistentBrowser": null,
        "signInFrequency": {
            "value": null,
            "type": null,
            "authenticationType": "primaryAndSecondaryAuthentication",
            "frequencyInterval": "everyTime",
            "isEnabled": true
        }
    }
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get conditionalAccessPolicy",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

