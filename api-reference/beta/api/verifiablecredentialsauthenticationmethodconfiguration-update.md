---
title: "Update verifiableCredentialsAuthenticationMethodConfiguration"
description: "Update the properties of a verifiableCredentialsAuthenticationMethodConfiguration object."
author: "tilarso"
ms.date: 10/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Update verifiableCredentialsAuthenticationMethodConfiguration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [verifiableCredentialsAuthenticationMethodConfiguration](../resources/verifiablecredentialsauthenticationmethodconfiguration.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "verifiablecredentialsauthenticationmethodconfiguration_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/verifiablecredentialsauthenticationmethodconfiguration-update-permissions.md)]

[!INCLUDE [rbac-verifiedid](../includes/rbac-for-apis/rbac-verifiedid-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /policies/authenticationMethodsPolicy/authenticationMethodConfigurations/verifiableCredentials
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|excludeTargets|[excludeTarget](../resources/excludetarget.md) collection| Groups of users that are excluded from the policy. Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md). Optional.|
|identityVerificationEventsConfiguration|[identityVerificationEventsConfiguration](../resources/identityverificationeventsconfiguration.md)|The tenant-level configuration that controls whether identity verification events and credential provenance information are collected and exposed for Verified ID verification. Optional.|
|state|authenticationMethodState| Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md). The possible values are: `enabled`, `disabled`. Optional.|

Omitting **identityVerificationEventsConfiguration** from a PATCH request leaves its existing value unchanged. If no configuration is stored, the setting defaults to disabled. When the stored configuration is `null` or has **isEnabled** set to `false`, no new identity verification events or credential provenance information are collected and requests to access retained events return `403 Forbidden` with the inner error code `IdentityVerificationEventsExposureDisabled`. Disabling the setting doesn't delete retained events. Retained events become readable again after the setting is re-enabled, subject to the retention policy.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_verifiablecredentialsauthenticationmethodconfiguration"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/policies/authenticationMethodsPolicy/authenticationMethodConfigurations/verifiableCredentials
Content-Type: application/json

{
  "identityVerificationEventsConfiguration": {
    "isEnabled": true
  }
}
```


### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```
