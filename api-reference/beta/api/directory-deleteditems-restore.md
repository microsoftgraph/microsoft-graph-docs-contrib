---
title: "Restore deleted item (directory object)"
ms.date: 12/23/2024
description: "Restore a recently deleted application, group, service principal, or user from deleted items."
author: "keylimesoda"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: apiPageType
---

# Restore deleted item (directory object)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Restore a recently deleted directory object from [deleted items](../resources/directory.md). The following types are supported:
- [administrativeUnit](../resources/administrativeunit.md)
- [application](../resources/application.md)
- [certificateBasedAuthPki](../resources/certificatebasedauthpki.md)
- [certificateAuthorityDetail](../resources/certificateauthoritydetail.md)
- [externalUserProfile](../resources/externaluserprofile.md)
- [group](../resources/group.md)
- [pendingExternalUserProfile](../resources/pendingexternaluserprofile.md)
- [servicePrincipal](../resources/serviceprincipal.md)
- [user](../resources/user.md)


If an item is accidentally deleted, you can fully restore the item. Additionally, restoring an application doesn't automatically restore the associated service principal automatically. You must call this API to explicitly restore the deleted service principal.

A recently deleted item remains available for up to 30 days. After 30 days, the item is permanently deleted.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

The following table shows the least privileged permission or permissions required to call this API on each supported resource type. Follow [best practices](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions) to request least privileged permissions. For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

| Supported resource | Delegated (work or school account) | Delegated (personal Microsoft account) | Application |
|:-|:-|:-|:-|
| [administrativeUnit](../resources/administrativeunit.md) | AdministrativeUnit.ReadWrite.All | Not supported. | AdministrativeUnit.ReadWrite.All |
| [application](../resources/application.md) | Application.ReadWrite.All | Not supported. | Application.ReadWrite.OwnedBy |
| [certificateBasedAuthPki](../resources/certificatebasedauthpki.md) | PublicKeyInfrastructure.Read.All | Not supported. | PublicKeyInfrastructure.Read.All |
| [certificateAuthorityDetail](../resources/certificateauthoritydetail.md) | PublicKeyInfrastructure.Read.All | Not supported. | PublicKeyInfrastructure.Read.All |
| [externalUserProfile](../resources/externaluserprofile.md) | ExternalUserProfile.ReadWrite.All | Not supported | ExternalUserProfile.ReadWrite.All |
| [group](../resources/group.md) | Group.ReadWrite.All | Not supported. | Group.ReadWrite.All |
| [pendingExternalUserProfile](../resources/pendingexternaluserprofile.md) | PendingExternalUserProfile.ReadWrite.All | Not supported | PendingExternalUserProfile.ReadWrite.All |
| [servicePrincipal](../resources/serviceprincipal.md) | Application.ReadWrite.All | Not supported. | Application.ReadWrite.OwnedBy |
| [user](../resources/user.md) | User.DeleteRestore.All | Not supported. | User.DeleteRestore.All |

[!INCLUDE [rbac-directory-deleted-items-apis](../includes/rbac-for-apis/rbac-directory-deleted-items-apis.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /directory/deleteditems/{id}/restore
```

## Request headers
| Name       | Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-type | application/json |

## Request body
In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|autoReconcileProxyConflict|Boolean|Optional parameter. Indicates whether Microsoft Entra ID should remove any conflicting proxy addresses while restoring a soft-deleted user whose one or more proxy addresses are currently used for an active user. Used only for restoring soft-deleted [user](../resources/user.md). The default value for this paramater is `false`.|
|newUserPrincipalName|String|The new **userPrincipalName** to add to the restored [user](../resources/user.md). Optional.|

## Response

If successful, this method returns a `200 OK` response code and a [directoryObject](../resources/directoryobject.md) object in the response body.

## Examples

### Example 1: Restore a deleted directory object

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "restore_directory_deleteditem"
}-->
```http
POST https://graph.microsoft.com/beta/directory/deleteditems/46cc6179-19d0-473e-97ad-6ff84347bbbb/restore
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/restore-directory-deleteditem-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/restore-directory-deleteditem-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/restore-directory-deleteditem-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/restore-directory-deleteditem-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/restore-directory-deleteditem-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/restore-directory-deleteditem-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/restore-directory-deleteditem-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#directoryObjects/$entity",
  "@odata.type":"#microsoft.graph.group",
  "id":"46cc6179-19d0-473e-97ad-6ff84347bbbb",
  "displayName":"SampleGroup",
  "groupTypes":["Unified"],
  "mail":"example@contoso.com",
  "mailEnabled":true,
  "mailNickname":"Example",
  "securityEnabled":false,
  "visibility":"Public"
}
```

### Example 2: Restore a deleted user and remove conflicting proxy addresses

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "restore_directory_deleteditem_autoreconcileproxyconflict"
}-->
```http
POST https://graph.microsoft.com/beta/directory/deleteditems/78bf875b-9343-4edc-9130-0d3958113563/restore
Content-Type: application/json

{
  "autoReconcileProxyConflict": true
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/restore-directory-deleteditem-autoreconcileproxyconflict-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/restore-directory-deleteditem-autoreconcileproxyconflict-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/restore-directory-deleteditem-autoreconcileproxyconflict-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/restore-directory-deleteditem-autoreconcileproxyconflict-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/restore-directory-deleteditem-autoreconcileproxyconflict-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/restore-directory-deleteditem-autoreconcileproxyconflict-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/restore-directory-deleteditem-autoreconcileproxyconflict-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users/$entity",
    "@odata.type": "#microsoft.graph.user",
    "id": "78bf875b-9343-4edc-9130-0d3958113563",
    "businessPhones": [],
    "displayName": "SampleUser",
    "givenName": "Sample",
    "jobTitle": "Product Marketing Manager",
    "mail": "sampleuser@contoso.com",
    "mobilePhone": "+1 425 555 0109",
    "officeLocation": "18/2111",
    "preferredLanguage": "en-US",
    "surname": "Vance",
    "userPrincipalName": "sampleuser@contoso.com"
}
```

### Example 3: Restore a deleted user and assign them a new userPrincipalName

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "restore_directory_deleteditem_newUserPrincipalName"
}-->
```http
POST https://graph.microsoft.com/beta/directory/deleteditems/78bf875b-9343-4edc-9130-0d3958113563/restore
Content-Type: application/json

{
  "newUserPrincipalName": "johndoe@contoso.com"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/restore-directory-deleteditem-newuserprincipalname-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/restore-directory-deleteditem-newuserprincipalname-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/restore-directory-deleteditem-newuserprincipalname-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/restore-directory-deleteditem-newuserprincipalname-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/restore-directory-deleteditem-newuserprincipalname-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/restore-directory-deleteditem-newuserprincipalname-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/restore-directory-deleteditem-newuserprincipalname-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#directoryObjects/$entity",
    "@odata.type": "#microsoft.graph.user",
    "id": "78bf875b-9343-4edc-9130-0d3958113563",
    "businessPhones": [],
    "displayName": "SampleUser",
    "givenName": "Sample",
    "mobilePhone": "+1 425 555 0109",
    "officeLocation": "18/2111",
    "preferredLanguage": "en-US",
    "surname": "Vance",
    "userPrincipalName": "johndoe@contoso.com"
}
```

