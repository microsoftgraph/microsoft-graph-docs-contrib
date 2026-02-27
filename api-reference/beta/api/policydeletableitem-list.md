---
title: "List policyDeletableItem objects"
description: "Get a list of the policyDeletableItem objects and their properties."
author: "ashyasingh"
ms.date: 10/07/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# List policyDeletableItem objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [policyDeletableItem](../resources/policydeletableitem.md) objects and their properties, which might be one of the following deleted policy types:
- [crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md)
- [crossTenantIdentitySyncPolicyPartner](../resources/crosstenantidentitysyncpolicypartner.md)
- [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md)
- [namedLocation](../resources/namedlocation.md)

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

### Permissions for retrieving cross-tenant access policy objects

<!-- {
  "blockType": "permissions",
  "name": "policydeletableitem-list-permissions",
  "requestUrls": ["GET /policies/deletedItems/crossTenantPartners", "GET /policies/deletedItems/crossTenantSyncPolicyPartners"],
  "mergePermissions": true 
  
}
-->
[!INCLUDE [permissions-table](../includes/permissions/policydeletableitem-list-permissions.md)]

[!INCLUDE [rbac-xtap-apis-read](../includes/rbac-for-apis/rbac-xtap-apis-read.md)]

### Permissions for retrieving conditional access policy objects

<!-- {
  "blockType": "permissions",
  "name": "policydeletableitem-list-permissions",
  "requestUrls": ["GET /identity/conditionalAccess/deletedItems/policies", "GET /identity/conditionalAccess/deletedItems/namedLocations"],
  "mergePermissions": true

}
-->
[!INCLUDE [permissions-table](../includes/permissions/policydeletableitem-list-2-permissions.md)]

[!INCLUDE [rbac-conditionalaccess-apis-read](../includes/rbac-for-apis/rbac-conditionalaccess-apis-read.md)]

## HTTP request

List deleted **crossTenantAccessPolicyConfigurationPartner** objects:
<!-- {
  "blockType": "ignored"
}
-->
```HTTP
GET /policies/deletedItems/crossTenantPartners
```

List deleted **crossTenantIdentitySyncPolicyPartner** objects:
<!-- {
  "blockType": "ignored"
}
-->
```HTTP
GET /policies/deletedItems/crossTenantSyncPolicyPartners
```

List deleted **conditionalAccessPolicy** objects:
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /identity/conditionalAccess/deletedItems/policies
```

List deleted **namedLocation** objects:
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /identity/conditionalAccess/deletedItems/namedLocations
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [policyDeletableItem](../resources/policydeletableitem.md) objects in the response body. The `@odata.context` property in the request body indicates which type of policy is returned.

## Examples

### Example 1: Get deleted crossTenantAccessPolicyConfigurationPartner objects

#### Request

The following example shows a request for crossTenantAccessPolicyConfigurationPartner.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_policydeletableitem_crossTenantAccessPolicyConfigurationPartner"
}
-->
```HTTP
GET https://graph.microsoft.com/beta/policies/deletedItems/crossTenantPartners/
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-policydeletableitem-crosstenantaccesspolicyconfigurationpartner-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-policydeletableitem-crosstenantaccesspolicyconfigurationpartner-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-policydeletableitem-crosstenantaccesspolicyconfigurationpartner-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-policydeletableitem-crosstenantaccesspolicyconfigurationpartner-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-policydeletableitem-crosstenantaccesspolicyconfigurationpartner-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-policydeletableitem-crosstenantaccesspolicyconfigurationpartner-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.policyDeletableItem"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft-ppe.com/testppebetadeleteapis/$metadata#policies/deletedItems/crossTenantPartners",
  "value": [
    {
      "tenantId": "01d0e717-bc90-46ba-94a9-71b4a811fddb",
      "deletedDateTime": "2025-06-18T22:58:04Z",
      "displayName": null,
      "isServiceProvider": null,
      "isInMultiTenantOrganization": false,
      "blockServiceProviderOutboundAccess": null,
      "inboundTrust": null,
      "b2bCollaborationOutbound": null,
      "b2bCollaborationInbound": null,
      "b2bDirectConnectOutbound": null,
      "b2bDirectConnectInbound": null,
      "tenantRestrictions": null,
      "invitationRedemptionIdentityProviderConfiguration": null,
      "crossCloudMeetingConfiguration": {
        "inboundAllowed": null,
        "outboundAllowed": null
      },
      "automaticUserConsentSettings": {
        "inboundAllowed": null,
        "outboundAllowed": null
      },
      "protectedContentSharing": {
        "inboundAllowed": null,
        "outboundAllowed": null
      }
    },
    {
      "tenantId": "809cbbd2-2325-4c17-bd51-f8f098db19c8",
      "deletedDateTime": "2025-06-18T22:53:31Z",
      "displayName": null,
      "isServiceProvider": null,
      "isInMultiTenantOrganization": false,
      "blockServiceProviderOutboundAccess": null,
      "inboundTrust": null,
      "b2bCollaborationOutbound": null,
      "b2bCollaborationInbound": null,
      "b2bDirectConnectOutbound": null,
      "b2bDirectConnectInbound": null,
      "tenantRestrictions": null,
      "invitationRedemptionIdentityProviderConfiguration": null,
      "crossCloudMeetingConfiguration": {
        "inboundAllowed": null,
        "outboundAllowed": null
      },
      "automaticUserConsentSettings": {
        "inboundAllowed": null,
        "outboundAllowed": null
      },
      "protectedContentSharing": {
        "inboundAllowed": null,
        "outboundAllowed": null
      }
    }
  ]
}
```


### Example 2: Get deleted crossTenantIdentitySyncPolicyPartner objects

#### Request

The following example shows a request for crossTenantIdentitySyncPolicyPartner.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_policydeletableitem_crossTenantIdentitySyncPolicyPartner"
}
-->
```HTTP
GET https://graph.microsoft.com/beta/policies/deletedItems/crossTenantSyncPolicyPartners/
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-policydeletableitem-crosstenantidentitysyncpolicypartner-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-policydeletableitem-crosstenantidentitysyncpolicypartner-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-policydeletableitem-crosstenantidentitysyncpolicypartner-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-policydeletableitem-crosstenantidentitysyncpolicypartner-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-policydeletableitem-crosstenantidentitysyncpolicypartner-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-policydeletableitem-crosstenantidentitysyncpolicypartner-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.policyDeletableItem"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft-ppe.com/testppebetadeleteapis/$metadata#policies/deletedItems/crossTenantSyncPolicyPartners",
  "value": [
    {
      "tenantId": "01d0e717-bc90-46ba-94a9-71b4a811fddb",
      "displayName": null,
      "deletedDateTime": "2025-06-18T23:11:01Z",
      "externalCloudAuthorizedApplicationId": null,
      "userSyncInbound": null
    }
  ]
}
```

### Example 3: Get deleted conditionalAccessPolicy objects

#### Request

The following example shows a request for a conditionalAccessPolicy.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_policydeletableitem_conditionalAccessPolicy"
}
-->
```HTTP
GET https://graph.microsoft.com/beta/identity/conditionalAccess/deletedItems/policies
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-policydeletableitem-conditionalaccesspolicy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-policydeletableitem-conditionalaccesspolicy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-policydeletableitem-conditionalaccesspolicy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-policydeletableitem-conditionalaccesspolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-policydeletableitem-conditionalaccesspolicy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-policydeletableitem-conditionalaccesspolicy-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.policyDeletableItem"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/conditionalAccess/deletedItems/policies",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET identity/conditionalAccess/deletedItems/policies?$select=conditions,createdDateTime",
    "value": [
        {
            "id": "1a71ea59-9583-4f16-9de4-47ecb42adfc6",
            "templateId": null,
            "displayName": "Demo",
            "createdDateTime": "2024-06-26T22:13:41.3634477Z",
            "modifiedDateTime": "2025-01-22T17:30:09.4040798Z",
            "state": "disabled",
            "deletedDateTime": "2025-09-12T17:01:05Z",
            "partialEnablementStrategy": null,
            "sessionControls": null,
            "conditions": {
                "userRiskLevels": [],
                "signInRiskLevels": [],
                "clientAppTypes": [
                    "all"
                ],
                "platforms": null,
                "times": null,
                "deviceStates": null,
                "devices": null,
                "applications": {
                    "includeApplications": [
                        "None"
                    ],
                    "excludeApplications": [],
                    "includeUserActions": [],
                    "includeAuthenticationContextClassReferences": [],
                    "applicationFilter": null
                },
                "users": {
                    "includeUsers": [
                        "None"
                    ],
                    "excludeUsers": [],
                    "includeGroups": [],
                    "excludeGroups": [],
                    "includeRoles": [],
                    "excludeRoles": [],
                    "includeGuestsOrExternalUsers": null,
                    "excludeGuestsOrExternalUsers": null
                },
                "locations": {
                    "includeLocations": [
                        "41f20046-7b5b-4721-b049-eccd63d614ef"
                    ],
                    "excludeLocations": []
                },
                "clientApplications": {
                    "includeServicePrincipals": [
                        "ServicePrincipalsInMyTenant"
                    ],
                    "excludeServicePrincipals": []
                }
            },
            "grantControls": {
                "operator": "OR",
                "builtInControls": [
                    "block"
                ],
                "customAuthenticationFactors": [],
                "termsOfUse": [],
                "authenticationStrength@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/conditionalAccess/deletedItems/policies('1a71ea59-9583-4f16-9de4-47ecb42adfc6')/grantControls/authenticationStrength/$entity",
                "authenticationStrength": null
            }
        }
    ]
}
```

### Example 4: Get deleted namedLocation objects

#### Request

The following example shows a request for a namedLocation.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_policydeletableitem_namedLocation"
}
-->
```HTTP
GET https://graph.microsoft.com/beta/identity/conditionalAccess/deletedItems/namedLocations
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-policydeletableitem-namedlocation-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-policydeletableitem-namedlocation-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-policydeletableitem-namedlocation-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-policydeletableitem-namedlocation-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-policydeletableitem-namedlocation-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-policydeletableitem-namedlocation-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.policyDeletableItem"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/conditionalAccess/deletedItems/namedLocations",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET identity/conditionalAccess/deletedItems/namedLocations?$select=createdDateTime,displayName",
    "value": [
        {
            "@odata.type": "#microsoft.graph.countryNamedLocation",
            "id": "1a4c0633-332f-4691-a27a-fd8334938a62",
            "displayName": "Calvin Test USA",
            "modifiedDateTime": "2025-09-05T22:12:01.4444669Z",
            "createdDateTime": "2025-09-05T22:12:01.4444669Z",
            "deletedDateTime": "2025-09-08T16:03:43Z",
            "countriesAndRegions": [
                "US"
            ],
            "includeUnknownCountriesAndRegions": false,
            "countryLookupMethod": "clientIpAddress"
        },
        {
            "@odata.type": "#microsoft.graph.ipNamedLocation",
            "id": "003fe866-1f11-4356-8ddc-22e52f491cc5",
            "displayName": "Pallav IP Test",
            "modifiedDateTime": "2025-09-10T15:36:17.992593Z",
            "createdDateTime": "2025-09-10T15:35:45.6440841Z",
            "deletedDateTime": "2025-09-12T16:56:35Z",
            "isTrusted": false,
            "ipRanges": [
                {
                    "@odata.type": "#microsoft.graph.iPv4CidrRange",
                    "cidrAddress": "127.30.27.128/30"
                }
            ]
        }
    ]
}
```

