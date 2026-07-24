---
title: "servicePrincipal: removeKey"
description: "Remove a key credential from a servicePrincipal"
ms.localizationpriority: medium
author: "Jackson-Woods"
ms.subservice: "entra-applications"
doc_type: "apiPageType"
ms.date: 04/04/2024
---

# servicePrincipal: removeKey

Namespace: microsoft.graph

Remove a key credential from a [servicePrincipal](../resources/serviceprincipal.md). This method along with [addKey](serviceprincipal-addkey.md) can be used by a servicePrincipal to automate rolling its expiring keys.

> [!NOTE]
> [Create servicePrincipal](../api/serviceprincipal-post-serviceprincipals.md) and
[Update servicePrincipal](../api/serviceprincipal-update.md) operations can continue to be used to add and update key credentials for any servicePrincipal with or without a user's context.

As part of the request validation for this method, a proof of possession of an existing key is verified before the action can be performed.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "serviceprincipal_removekey" } -->
[!INCLUDE [permissions-table](../includes/permissions/serviceprincipal-removekey-permissions.md)]

[!INCLUDE [rbac-apps-serviceprincipal-creds-apis](../includes/rbac-for-apis/rbac-apps-serviceprincipal-creds-apis.md)]

## HTTP request

You can address the service principal using either its **id** or **appId**. **id** and **appId** are referred to as the **Object ID** and **Application (Client) ID**, respectively, in app registrations in the Microsoft Entra admin center.

<!-- { "blockType": "ignored" } -->

```http
POST /serviceprincipals/{id}/removeKey
POST /servicePrincipals(appId='{appId}')/removeKey
```

## Request headers

| Name           | Description                |
|:---------------|:---------------------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type   | application/json. Required.|

## Request body

In the request body, provide the following required properties.

| Property    | Type | Description|
|:----------|:-----|:-----------|
| keyId     | Guid | The unique identifier for the password.|
| proof | String | A self-signed JWT token used as a proof of possession of the existing keys. This JWT token must be signed with a private key that corresponds to one of the existing valid certificates associated with the **servicePrincipal**. The token should contain the following claims:<ul><li>**aud**: Audience needs to be `00000002-0000-0000-c000-000000000000`.</li><li>**iss**: Issuer needs to be the ID of the **servicePrincipal** that initiates the request.</li><li>**nbf**: Not before time.</li><li>**exp**: Expiration time should be the value of **nbf** + 10 minutes.</li></ul><br>For steps to generate this proof of possession token, see [Generating proof of possession tokens for rolling keys](/graph/application-rollkey-prooftoken).|

## Response

If successful, this method returns a `204 No content` response code.

## Examples

The following is example shows how to call this API.

### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "serviceprincipal_removekey"
}-->

```http
POST https://graph.microsoft.com/v1.0/servicePrincipals/{id}/removeKey
Content-Type: application/json

{
    "keyId": "f0b0b335-1d71-4883-8f98-567911bfdca6",
    "proof":"eyJ0eXAiOiJ..."
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/serviceprincipal-removekey-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/serviceprincipal-removekey-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/serviceprincipal-removekey-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/serviceprincipal-removekey-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/serviceprincipal-removekey-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/serviceprincipal-removekey-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/serviceprincipal-removekey-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```
## Removing certificates that also have passwords
Some certificates such as signing certs contain a private key, and in order to access the private key, it must also have a password. As the certificate is stored in keyCredentials, the password is stored in passwordCredentials with a matching customKeyIdentifier. It is not possible to delete a cert with a password without also deleting its correspinding password and vice-versa. You must delete both at the same time within the same request.

Warning: It is not easy to add or remove certificates or passwords using Microsoft Graph API. You can accidently overwrite the keyCredentials or passwordCredentials property and lose all of your other certs and passwords.


### Sample script

```powershell
<#################################################################################
DISCLAIMER:

This is not an official PowerShell Script. We designed it specifically for the situation you have
encountered right now.

Please do not modify or change any preset parameters.

Please note that we will not be able to support the script if it's changed or altered in any way
or used in a different situation for other means.

This code-sample is provided "AS IS" without warranty of any kind, either expressed or implied,
including but not limited to the implied warranties of merchantability and/or fitness for a
particular purpose.

This sample is not supported under any Microsoft standard support program or service.

Microsoft further disclaims all implied warranties including, without limitation, any implied
warranties of merchantability or of fitness for a particular purpose.

The entire risk arising out of the use or performance of the sample and documentation remains with
you.

In no event shall Microsoft, its authors, or anyone else involved in the creation, production, or
delivery of the script be liable for any damages whatsoever (including, without limitation, damages
for loss of business profits, business interruption, loss of business information, or other
pecuniary loss) arising out of the use of or inability to use the sample or documentation, even if
Microsoft has been advised of the possibility of such damages.

#################################################################################>

function Remove-EntraCredential
{
    param
    (
        [string][ValidateSet("Application","ServicePrincipal")][Parameter(mandatory=$true)]$AppType,
        [string][Parameter(mandatory=$true)]$Id,
        [string][Parameter(mandatory=$true)]$KeyId
    )
    if($AppType -eq "Application") {
        $app = Get-MgApplication -Filter "appId eq '$Id' or id eq '$Id'" -Property id,passwordCredentials,keyCredentials
    } elseif($AppType -eq "ServicePrincipal") {
        $app = Get-MgServicePrincipal -Filter "appId eq '$Id' or id eq '$Id'" -Property id,passwordCredentials,keyCredentials
    }
    $keycreds = $app.KeyCredentials
    $passcreds = $app.passwordCredentials
    $Bytes = ($keycreds | Where-Object {$_.KeyId -eq $KeyId}).customKeyIdentifier
    try {
        $customKeyIdentifier =[Convert]::ToBase64String($Bytes)
    } catch {
        # KeyId not found in keyCredentials
    }
    
    $newKeyCredentials = @()
    foreach($cred in $keycreds) {
        $CredcustomKeyIdentifier = [Convert]::ToBase64String($cred.CustomKeyIdentifier)
        if($CredcustomKeyIdentifier -ne $customKeyIdentifier) {
          $cred.Key = $null
          $newKeyCredentials += $cred
        }
    }

    $newPassowrdCredentials = @()
    foreach($cred in $passcreds) {
        try {
          $CredcustomKeyIdentifier = [Convert]::ToBase64String($Cred.customKeyIdentifier)
        } catch {
          # customKeyIdentifier does not exist
        }
        if($CredcustomKeyIdentifier -ne $customKeyIdentifier -and $cred.keyid -ne $KeyId) {
          $newPassowrdCredentials += $cred
        }
    }

    if($AppType -eq "Application") {
        Update-MgApplication -ApplicationId $app.id -KeyCredentials $newKeyCredentials -PasswordCredentials $newPassowrdCredentials
    } elseif($AppType -eq "ServicePrincipal") { 
        Update-MgServicePrincipal -ServicePrincipalId $app.id -KeyCredentials $newKeyCredentials -PasswordCredentials $newPassowrdCredentials
    }
}
```
This script will attempt to remove credentials and their associated credentials (Client Secrets and Certificates) based on the provided KeyId. You do need to know whether you are upding a application or servicePrinciapal object, the id of the object, and keyId of the credentials.

```powershell
USAGE:
  Remove-EntraCredential -AppType {Application|ServicePrincipal} -Id {ObjectId} -KeyId {KeyId}
Examples:
  Remove-EntraCredential -AppType ServicePrincipal -Id 00000000-fede-4708-8876-000000000000 -KeyId 00000000-74a1-4aa7-87fc-000000000000
  Remove-EntraCredential -AppType Application -Id 00000000-fede-4708-8876-000000000000 -KeyId 00000000-74a1-4aa7-87fc-000000000000
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "servicePrincipal: removeKey",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

