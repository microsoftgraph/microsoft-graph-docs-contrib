---
title: "List configurationDrifts"
description: "Get a list of the configurationDrift objects and their properties."
author: "swatyario"
ms.date: 01/19/2026
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
doc_type: apiPageType
---

# List configurationDrifts

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [configurationDrift](../resources/configurationdrift.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "configurationmanagement_list_configurationdrifts" } -->
[!INCLUDE [permissions-table](../includes/permissions/configurationmanagement-list-configurationdrifts-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/configurationManagement/configurationDrifts
```

## Optional query parameters

This method supports the `$select`, `$filter`, `$orderBy`, and `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [configurationDrift](../resources/configurationdrift.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_configurationdrift"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/configurationManagement/configurationDrifts
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.configurationDrift)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/configurationManagement/configurationDrifts",
  "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET admin/configurationManagement/configurationDrifts?$select=baselineResourceDisplayName,driftedProperties",
  "value": [
    {
      "id": "4e808e99-7f60-4194-8294-02ede71effd8",
      "monitorId": "b166c9cb-db29-438b-95fb-247da1dc72c3",
      "tenantId": "96bf81b4-2694-42bb-9204-70081135ca61",
      "resourceType": "microsoft.exchange.accepteddomain",
      "baselineResourceDisplayName": "Accepted Domain",
      "firstReportedDateTime": "2024-12-12T09:00:57.4830642Z",
      "status": "active",
      "resourceInstanceIdentifier": {
        "Identity": "contoso.onmicrosoft.com"
      },
      "driftedProperties": [
        {
          "propertyName": "Ensure",
          "currentValue": "Absent",
          "desiredValue": "Present"
        }
      ]
    },
    {
      "id": "f30f8d6b-ea1e-4e1e-995e-341735ea01f4",
      "monitorId": "b166c9cb-db29-438b-95fb-247da1dc72c3",
      "tenantId": "96bf81b4-2694-42bb-9204-70081135ca61",
      "resourceType": "microsoft.exchange.accepteddomain",
      "baselineResourceDisplayName": "Accepted Domain",
      "firstReportedDateTime": "2024-12-12T06:00:39.2072475Z",
      "status": "active",
      "resourceInstanceIdentifier": {
        "Identity": "contoso.onmicrosoft.com"
      },
      "driftedProperties": [
        {
          "propertyName": "Ensure",
          "currentValue": "Absent",
          "desiredValue": "Present"
        }
      ]
    },
    {
      "id": "9d43b643-71ab-4415-8d98-ca28c7cf0df4",
      "monitorId": "69b6b9ba-20c9-4ffb-beef-263c07063222",
      "tenantId": "96bf81b4-2694-42bb-9204-70081135ca61",
      "resourceType": "microsoft.exchange.mailcontact",
      "baselineResourceDisplayName": "Mail Contact Resource",
      "firstReportedDateTime": "2024-12-12T06:00:38.1402661Z",
      "status": "active",
      "resourceInstanceIdentifier": {
        "Name": "Chris"
      },
      "driftedProperties": [
        {
          "propertyName": "Ensure",
          "currentValue": "Absent",
          "desiredValue": "Present"
        }
      ]
    }
  ]
}
```
