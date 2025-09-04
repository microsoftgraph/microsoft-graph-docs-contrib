---
title: "List cloudPcManagedLicense objects"
description: "Get a list of the cloudPcManagedLicense objects and their properties."
author: "Yu-Lan"
ms.date: 09/04/2025
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# List cloudPcManagedLicense objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the cloudPcManagedLicense objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualendpoint-list-managedlicenses-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualendpoint-list-managedlicenses-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/virtualEndpoint/managedLicenses
```

## Optional query parameters

This method supports the $select and $filter OData query parameters to help customize the response. For general information, see OData query parameters.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [cloudPcManagedLicense](../resources/cloudpcmanagedlicense.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_cloudpcmanagedlicense"
}
-->
``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/managedLicenses
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcManagedLicense"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.cloudPcManagedLicense",
      "id": "7c3adc13-42ff-14c5-c29f-24fb5528f76b",
      "licenseType": "String",
      "status": "String",
      "displayName": "String",
      "licensesCount": "Integer",
      "assignedCount": "Integer",
      "allotmentLicensesCount": "Integer",
      "subscriptionId": "String",
      "servicePlanId": "String",
      "expirationDateTime": "String (timestamp)",
      "latestLicenseStartDateTime": "String (timestamp)",
      "nextBillingDateTime": "String (timestamp)",
      "activeDateTime": "String (timestamp)"
    }
  ]
}
```

