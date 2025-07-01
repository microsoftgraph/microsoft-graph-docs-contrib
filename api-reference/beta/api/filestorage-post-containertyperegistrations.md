---
title: "Create fileStorageContainerTypeRegistration"
description: "Create a new fileStorageContainerTypeRegistration object."
author: "javieralvarezchiang"
ms.date: 06/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# Create fileStorageContainerTypeRegistration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new fileStorageContainerTypeRegistration object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "filestorage-post-containertyperegistrations-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/filestorage-post-containertyperegistrations-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /storage/fileStorage/containerTypeRegistrations
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md) object.

You can specify the following properties when creating a **fileStorageContainerTypeRegistration**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|name|String|**TODO: Add Description** Required.|
|owningAppId|Guid|**TODO: Add Description** Required.|
|billingClassification|fileStorageContainerBillingClassification|**TODO: Add Description**. The possible values are: `standard`, `trial`, `directToCustomer`, `unknownFutureValue`. Required.|
|billingStatus|fileStorageContainerBillingStatus|**TODO: Add Description**. The possible values are: `invalid`, `valid`, `unknownFutureValue`. Required.|
|registeredDateTime|DateTimeOffset|**TODO: Add Description** Required.|
|expirationDateTime|DateTimeOffset|**TODO: Add Description** Required.|
|settings|[fileStorageContainerTypeRegistrationSettings](../resources/filestoragecontainertyperegistrationsettings.md)|**TODO: Add Description** Required.|
|etag|String|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `201 Created` response code and a [fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_filestoragecontainertyperegistration_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/storage/fileStorage/containerTypeRegistrations
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.fileStorageContainerTypeRegistration",
  "name": "String",
  "owningAppId": "Guid",
  "billingClassification": "String",
  "billingStatus": "String",
  "registeredDateTime": "String (timestamp)",
  "expirationDateTime": "String (timestamp)",
  "settings": {
    "@odata.type": "microsoft.graph.fileStorageContainerTypeRegistrationSettings"
  },
  "etag": "String"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.fileStorageContainerTypeRegistration"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.fileStorageContainerTypeRegistration",
  "id": "c22d3fd3-c5af-694e-453a-e17057f29dc1",
  "name": "String",
  "owningAppId": "Guid",
  "billingClassification": "String",
  "billingStatus": "String",
  "registeredDateTime": "String (timestamp)",
  "expirationDateTime": "String (timestamp)",
  "settings": {
    "@odata.type": "microsoft.graph.fileStorageContainerTypeRegistrationSettings"
  },
  "etag": "String"
}
```

