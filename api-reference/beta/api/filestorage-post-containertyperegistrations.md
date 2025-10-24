---
title: "Create fileStorageContainerTypeRegistration"
description: "Create or replace a fileStorageContainerTypeRegistration object."
author: "javieralvarezchiang"
ms.date: 06/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# Create fileStorageContainerTypeRegistration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create or replace a [fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md) object. This method registers a [fileStorageContainerType](../resources/filestoragecontainertype.md) in the tenant. 

For standard containers, [billing](/sharepoint/dev/embedded/administration/billing/billing) must be valid for the registration to complete successfully.

> [!IMPORTANT]
> * An application can only register a [fileStorageContainerType](../resources/filestoragecontainertype.md) that it owns, either using app-only or delegated tokens.
> * The registration of a container type in a newly created tenant can fail if the tenant isn't yet fully ready. You might need to wait at least an hour before you can register a container type in a new tenant.

Settings can't be modified during registration.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "filestorage-post-containertyperegistrations-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/filestorage-post-containertyperegistrations-permissions.md)]

>**Note:**
> * When delegated tokens are used, either the SharePoint Embedded admin role or the Global admin role is required.
> * The registration must be done in the context of the application that owns the [fileStorageContainerType](../resources/filestoragecontainertype.md).

## HTTP request

To register a **fileStorageContainerType** in the current tenant. 

<!-- {
  "blockType": "ignored"
}
-->
```http
PUT /storage/fileStorage/containerTypeRegistrations/{fileStorageContainerTypeId}
```

>**Note:** Use the PUT method. This request creates a **fileStorageContainertypeRegistration** object with the provided ID (**fileStorageContainerTypeId**). 

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md) object.

You can specify the following property when you create a **fileStorageContainerTypeRegistration**.

|Property|Type|Description|
|:---|:---|:---|
|applicationPermissionGrants|[fileStorageContainerTypeAppPermissionGrant](../resources/filestoragecontainertypeapppermissiongrant.md) collection|The access privileges of applications on containers of a specific **fileStorageContainerType**. Optional.|

## Response

If successful, this method returns a `201 Created` response code and a [fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md) object in the response body.

## Examples

### Example 1: Create a fileStorageContainerTypeRegistration for a trial fileStorageContainerType

The following example shows how to create a **fileStorageContainerTypeRegistration** for a trial **fileStorageContainerType** with some **applicationPermissionGrants**.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_filestoragecontainertyperegistration"
}
-->
```http
PUT https://graph.microsoft.com/beta/storage/fileStorage/containerTypeRegistrations/de988700-d700-020e-0a00-0831f3042f00
Content-Type: application/json

{
  "applicationPermissionGrants": [
    {
      "appId": "11335700-9a00-4c00-84dd-0c210f203f00",
      "delegatedPermissions": ["readContent", "writeContent"],
      "applicationPermissions": ["full"]
    },
    {
      "appId": "d893fd02-3578-4c7f-bd85-12fc3358af48",
      "delegatedPermissions": ["readContent"],
      "applicationPermissions": ["read"]
    }
  ]
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-filestoragecontainertyperegistration-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.fileStorageContainerTypeRegistration"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.fileStorageContainerTypeRegistration",
  "id": "de988700-d700-020e-0a00-0831f3042f00",
  "name": "Test Trial Container",
  "owningAppId": "11335700-9a00-4c00-84dd-0c210f203f00",
  "billingClassification": "trial",
  "billingStatus": "valid",
  "registeredDateTime": "01/20/2025",
  "expirationDateTime": "02/20/2025",
  "etag": "RVRhZw==",
  "settings": {
    "@odata.type": "microsoft.graph.fileStorageContainerTypeRegistrationSettings",
    "sharingCapability": "disabled",
    "urlTemplate": "https://app.contoso.com/redirect?tenant={tenant-id}&drive={drive-id}&folder={folder-id}&item={item-id}",
    "isDiscoverabilityEnabled": true,
    "isSearchEnabled": true,
    "isItemVersioningEnabled": true,
    "itemMajorVersionLimit": 50,
    "maxStoragePerContainerInBytes": 104857600,
    "isSharingRestricted": false
  },
  "applicationPermissionGrants": [
    {
      "appId": "11335700-9a00-4c00-84dd-0c210f203f00",
      "delegatedPermissions": ["readContent", "writeContent"],
      "applicationPermissions": ["full"]
    },
    {
      "appId": "d893fd02-3578-4c7f-bd85-12fc3358af48",
      "delegatedPermissions": ["readContent"],
      "applicationPermissions": ["read"]
    }
  ]
}
```

### Example 2: Create a fileStorageContainerTypeRegistration for a standard fileStorageContainerType where billing setup isn't completed

The following example shows how to create a **fileStorageContainerTypeRegistration** for a standard **fileStorageContainerType** where the billing setup isn't completed.

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_filestoragecontainertyperegistration_no_billing"
}
-->
```http
PUT https://graph.microsoft.com/beta/storage/fileStorage/containerTypeRegistrations/52a2630c-5e6a-41ff-8645-15406bafe66a
Content-Type: application/json

{
  "applicationPermissionGrants": [
    {
      "appId": "11335700-9a00-4c00-84dd-0c210f203f00",
      "delegatedPermissions": ["readContent", "writeContent"],
      "applicationPermissions": ["full"]
    }
  ]
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-filestoragecontainertyperegistration-no-billing-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 405 Method Not Allowed
```
