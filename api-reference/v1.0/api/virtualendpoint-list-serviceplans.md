---
title: "List servicePlans"
description: "List the currently available service plans that an organization can purchase for their Cloud PCs."
author: "johnnyjiang1"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 06/08/2026
---

# List servicePlans

Namespace: microsoft.graph

List the currently available [service plans](../resources/cloudpcserviceplan.md) that an organization can purchase for their Cloud PCs.

For examples of currently available service plans, see [Windows 365 compare plans and pricing](https://www.microsoft.com/windows-365/business/compare-plans-pricing). Currently, the Microsoft Graph API is available for Windows 365 Enterprise.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualendpoint_list_serviceplans" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualendpoint-list-serviceplans-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /deviceManagement/virtualEndpoint/servicePlans
```

## Optional query parameters

This method doesn't support OData query parameters to customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [cloudPcServicePlan](../resources/cloudpcserviceplan.md) objects in the response body.

## Example

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_servicePlans"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/deviceManagement/virtualEndpoint/servicePlans
```

### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcServicePlan",
  "isCollection": true
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.cloudPcServicePlan",
      "id": "dea1edd3-edd3-dea1-d3ed-a1ded3eda1de",
      "displayName": "Cloud PC - Level 1 - 1vCPU/2GB",
      "vCpuCount": 1,
      "ramInGB": 2,
      "storageInGB": 64
    }
  ]
}
```
