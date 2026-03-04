---
title: "cloudPC: reprovision"
description: "Reprovision a specific Cloud PC."
author: "wx2486"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 11/17/2025
---

# cloudPC: reprovision

Namespace: microsoft.graph

Reprovision a specific [Cloud PC](../resources/cloudpc.md).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpc_reprovision" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpc-reprovision-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

To reprovision the [cloudPC](../resources/cloudpc.md) of the specified user (who is the signed-in user) in the organization using delegated permission:

``` http
POST /me/cloudPCs/{id}/reprovision
POST /users/{userId}/cloudPCs/{id}/reprovision
```

To reprovision the specified [cloudPC](../resources/cloudpc.md) in the organization, using either delegated permission (the signed-in user should be the administrator) or application permission:

``` http
POST /deviceManagement/virtualEndpoint/cloudPCs/{id}/reprovision
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

> **Note**: Only the APIs for *admin* support request body.

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|osVersion|[cloudPcOperatingSystem](#cloudpcoperatingsystem-values)|The version of the operating system (OS) to provision on Cloud PCs. Possible values are: `windows10`, `windows11`, and `unknownFutureValue`.|
|userAccountType|[cloudPcUserAccountType](#cloudpcuseraccounttype-values)|The account type of the user on provisioned Cloud PCs. Possible values are: `standardUser`, `administrator`, and `unknownFutureValue`.|

### cloudPcOperatingSystem values

|Member|Description|
|:---|:---|
|windows10|The Windows 10 operating system.|
|windows11|The Windows 11 operating system.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

### cloudPcUserAccountType values

|Member|Description|
|:---|:---|
|standardUser|A user without local administrative permissions on the Cloud PC. Standard users can only install content from the Microsoft Store app but they can't modify Windows settings that require local administrative privileges.|
|administrator|A user with full local administrative permissions on the Cloud PC. Administrators can install any software and modify any file or setting on the Cloud PC.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Example 1: Reprovision the cloudPC for the administrator

The following example shows how to reprovision the Cloud PC for the administrator.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "cloudpc_reprovision"
}
-->

``` http
POST https://graph.microsoft.com/v1.0/deviceManagement/virtualEndpoint/cloudPCs/4b5ad5e0-6a0b-4ffc-818d-36bb23cf4dbd/reprovision
Content-Type: application/json
Content-length: 61

{
  "userAccountType": "administrator",
  "osVersion": "windows10"
}
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```

The following example shows how to reprovision the Cloud PC for the signed-in user.

### Example 2: Reprovision the cloudPC for the signed-in user

The following example shows how to reprovision the Cloud PC for the signed-in user.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "user_cloudpc_reprovision"
}
-->

``` http
POST https://graph.microsoft.com/v1.0/me/cloudPCs/36bd4942-0ca8-11ed-861d-0242ac120002/reprovision
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```
