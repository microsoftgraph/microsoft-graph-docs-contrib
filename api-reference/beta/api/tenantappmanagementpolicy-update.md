---
title: "Update tenantAppManagementPolicy"
description: "Update the default tenant policy that applies to applications and service principals objects."
ms.localizationpriority: medium
author: "aricrowe57"
ms.subservice: "entra-sign-in"
doc_type: "apiPageType"
ms.date: 08/09/2024
---

# Update tenantAppManagementPolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [tenantAppManagementPolicy](../resources/tenantAppManagementPolicy.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "tenantappmanagementpolicy_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/tenantappmanagementpolicy-update-permissions.md)]

[!INCLUDE [rbac-app-auth-method-default-policy-api-update](../includes/rbac-for-apis/rbac-app-auth-method-default-policy-api-update.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /policies/defaultAppManagementPolicy
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

> [!IMPORTANT]
> Service principals with a createdDateTime `null` are treated as having being created on 01/01/2019.

## Request body

In the request body, supply the values for relevant fields from the [tenantAppManagementPolicy](../resources/tenantAppManagementPolicy.md) that should be updated. Existing properties that are not included in the request body will maintain their previous values. For best performance, do not include unchanged values in the request payload.

| Property                     | Type                                                                     | Description                                                                                      |
| :--------------------------- | :----------------------------------------------------------------------- | :----------------------------------------------------------------------------------------------- |
| applicationRestrictions      | [appManagementApplicationConfiguration](../resources/appmanagementapplicationconfiguration.md) | Restrictions that apply as default to all application objects in the tenant.                     |
| displayName                  | String                                                                   | The display name of the default policy. Inherited from [policyBase](../resources/policybase.md). |
| description                  | String                                                                   | The description of the default policy. Inherited from [policyBase](../resources/policybase.md).  |
| isEnabled                    | Boolean                                                                  | Denotes if the policy is enabled. Default value is false.                                        |
| servicePrincipalRestrictions | [appManagementConfiguration](../resources/appManagementConfiguration.md) | Restrictions that apply as default to all service principal objects in the tenant.               |

> [!IMPORTANT]
> Service principals with a createdDateTime `null` are treated as having being created on 01/01/2019.

## Response

If successful, this method returns a `204 No Content` response code. It doesn't return anything in the response body.

## Examples

### Request

The following example shows a request that configures password credentials, key credentials, identifier URIs, and redirect URI restrictions.

# [HTTP](#tab/http)

<!-- {
    "blockType": "request",
    "name": "update_tenantAppManagementPolicy"
}-->

```msgraph-interactive
PATCH https://graph.microsoft.com/beta/policies/defaultAppManagementPolicy
Content-Type: application/json

{
    "isEnabled": true,
    "applicationRestrictions": {
        "passwordCredentials": [
            {
                "restrictionType": "passwordAddition",
                "maxLifetime": null,
                "restrictForAppsCreatedAfterDateTime": "2021-01-01T10:37:00Z"
            },
            {
                "restrictionType": "passwordLifetime",
                "maxLifetime": "P90D",
                "restrictForAppsCreatedAfterDateTime": "2017-01-01T10:37:00Z"
            },
            {
                "restrictionType": "symmetricKeyAddition",
                "maxLifetime": null,
                "restrictForAppsCreatedAfterDateTime": "2021-01-01T10:37:00Z"
            },
            {
                "restrictionType": "customPasswordAddition",
                "maxLifetime": null,
                "restrictForAppsCreatedAfterDateTime": "2015-01-01T10:37:00Z"
            },
            {
                "restrictionType": "symmetricKeyLifetime",
                "maxLifetime": "P30D",
                "restrictForAppsCreatedAfterDateTime": "2015-01-01T10:37:00Z"
            }
        ],
        "keyCredentials": [
            {
                "restrictionType": "asymmetricKeyLifetime",
                "maxLifetime": "P30D",
                "restrictForAppsCreatedAfterDateTime": "2015-01-01T10:37:00Z"
            },
            {
                "restrictionType": "trustedCertificateAuthority",
                "restrictForAppsCreatedAfterDateTime": "2019-10-19T10:37:00Z",
                "certificateBasedApplicationConfigurationIds": [
                    "eec5ba11-2fc0-4113-83a2-ed986ed13743",
                    "bb8e164b-f9ed-4b98-bc45-65eddc14f4c1"
                ],
                "maxLifetime": null
            }
        ],
        "identifierUris": {
            "nonDefaultUriAddition": {
                "restrictForAppsCreatedAfterDateTime": "2024-01-01T10:37:00Z",
                "excludeAppsReceivingV2Tokens": true,
                "excludeSaml": true,
                "excludeActors": {
                    "customSecurityAttributes": [
                        {
                            "@odata.type": "microsoft.graph.customSecurityAttributeStringValueExemption",
                            "id": "PolicyExemptions_AppManagementExemption",
                            "operator": "equals",
                            "value": "ExemptFromIdentifierUriAdditionRestriction"
                        }
                    ]
                }
            }
        },
        "redirectUris": {
            "uriWithBlockedScheme": {
                "state": "enabled",
                "blockedSchemes": [
                    "http",
                    "ftp"
                ],
                "exemptFormats": [
                    "http://example.com/login"
                ],
                "web": {
                    "blockedSchemes": [
                        "custom-ftps"
                    ]
                },
                "spa": {
                    "blockedSchemes": [
                        "myapp"
                    ],
                    "exemptFormats": [
                        "https://spa.example.com/auth"
                    ]
                },
                "publicClient": {
                    "blockedSchemes": [
                        "msauth"
                    ],
                    "exemptFormats": [
                        "https://public.example.com/auth"
                    ]
                }
            },
            "uriWithoutAllowedScheme": {
                "state": "enabled",
                "allowedSchemes": [
                    "https"
                ],
                "web": {
                    "allowedSchemes": [
                        "https"
                    ]
                },
                "spa": {
                    "allowedSchemes": [
                        "https",
                        "msal"
                    ]
                },
                "publicClient": {
                    "allowedSchemes": [
                        "myapp"
                    ]
                }
            },
            "uriWithBlockedDomain": {
                "state": "enabled",
                "blockedDomains": [
                    "contoso-short.com",
                    "tempuri.org"
                ],
                "web": {
                    "blockedDomains": [
                        "short.contoso.com"
                    ]
                },
                "spa": {
                    "blockedDomains": [
                        "contoso.dev"
                    ]
                },
                "publicClient": {
                    "blockedDomains": [
                        "mspreview.contoso.com"
                    ]
                }
            },
            "uriWithoutAllowedDomain": {
                "state": "enabled",
                "allowedDomains": [
                    "contoso.com",
                    "login.microsoftonline.com"
                ],
                "web": {
                    "allowedDomains": [
                        "app.contoso.com"
                    ]
                },
                "spa": {
                    "allowedDomains": [
                        "spa.contoso.com"
                    ]
                },
                "publicClient": {
                    "allowedDomains": [
                        "app://contoso"
                    ]
                }
            },
            "uriWithWildcard": {
                "state": "enabled",
                "excludeFormats": {
                    "excludeWildcardsInPath": true,
                    "excludeWildcardsInPathWithDomains": [
                        "contoso.com",
                        "fabrikam.com"
                    ]
                }
            }
        }
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-tenantappmanagementpolicy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-tenantappmanagementpolicy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-tenantappmanagementpolicy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-tenantappmanagementpolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-tenantappmanagementpolicy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-tenantappmanagementpolicy-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-tenantappmanagementpolicy-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": false
} -->

```http
HTTP/1.1 204 No Content
```

## Related content

- [tenantAppManagementPolicy](../resources/tenantappmanagementpolicy.md)
- [appManagementApplicationConfiguration](../resources/appmanagementapplicationconfiguration.md)
- [redirectUriConfiguration](../resources/redirecturiconfiguration.md)
